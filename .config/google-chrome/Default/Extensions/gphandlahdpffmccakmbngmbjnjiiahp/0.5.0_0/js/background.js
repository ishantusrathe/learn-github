if (chrome.browserAction) {
    chrome.browserAction.onClicked.addListener(function(tabs) {
        tabsWorker(tabs);
        // chrome.tabs.executeScript(tabs.id, { code: tabsWorker(tabs) });
    });
}

function tabsWorker(tabs) {
    let activeTab = tabs;
    // let pdf = activeTab.url.substr(-4).toLowerCase() == '.pdf';
    let pdf = activeTab.url.toLowerCase().indexOf('.pdf') !== -1;
    let name = activeTab.url.split('/')[activeTab.url.split('/').length - 1];
    let pdfUrl = activeTab.url.substring(activeTab.url.indexOf('http'));

    if (pdf) {
        showLoader();
        sendToPdffiller(pdfUrl, name, 'ext');
    } else {
        showLoader();
        convert(activeTab.url, activeTab.width, activeTab.height, 3);
    }
}

function convert (url, width, height, attemptsLeft) {
    const body = new FormData()
    body.append('url', url);
    body.append('width', width);
    body.append('height', height);
    fetch(config.converter_server_url, {
        method: 'post',
        body
    })
        .then(response => response.json())
        .then(json => {
            if (json.result) {
                let date = moment().format('MM/DD/YYYY HH:mm:ss');
                let filename = `ConvertHTMLtoPDF-${date}.pdf`;
                let fileUrl = json.url;
                sendToPdffiller(fileUrl, filename, 'ext')
                return
            }
            if (json.errors && attemptsLeft) {
                setTimeout(() => {
                    convert(url, width, height, --attemptsLeft);
                }, 3000);
                return;
            }
            console.log('Page cannot be converted to PDF.');
            showError('Page cannot be converted to PDF.');

        })
        .catch(() => {
            console.log('Page cannot be converted to PDF.');
            showError('Page cannot be converted to PDF.')
        })
    // $.post(config.converter_server_url, {
    //     url: url,
    //     width: width,
    //     height: height
    // }, function (json) {
    //     console.log(json)
    //     if (json.result) {
    //         let date = moment().format('MM/DD/YYYY HH:mm:ss');
    //         let filename = `ConvertHTMLtoPDF-${date}.pdf`;
    //         let fileUrl = json.url;
    //         sendToPdffiller(fileUrl, filename, 'ext')
    //     } else {
    //         showError('Page cannot be converted to PDF.');
    //     }
    // }, 'json')
}

function getUrlResponse(url, params) {
    const splitSymbol = url.indexOf('?') === -1 ? '?' : '&';

    return url + splitSymbol + params;
}

function sendToPdffiller(url, filename, viewer) {
    $.post(config.api_url, {
        source: 1,
        filename: filename,
        pdf_url: url,
        type: 'chrome.ext',
        out: 'json'
    }, function (json) {
        hideLoader();
        if (json.result) {
            const apiUtmParams = viewer ? config.api_utm_viewer : config.api_utm;
            const urlResponse = getUrlResponse(json.url, apiUtmParams);

            window.open(urlResponse, '_blank');
        } else {
            showError(json.message);
        }
    }, 'json');
}

function openPage() {
    chrome.tabs.query({active: true}, function (tabs) {
        tabsWorker(tabs);
    });
}

function showExtLoader() {
    chrome.tabs.executeScript({code: showLoader() });
}

chrome.runtime.onMessage.addListener(
    function (request, sender, sendResponse) {
        if (request.contentScriptQuery === 'sendPdffillerAPI') {
            $.post(config.api_url, {
                source: 1,
                filename: request.filename,
                pdf_url: request.url,
                type: 'chrome.ext',
                out: 'json'
            }, function (json) {
                hideLoader();
                if (json.result) {
                    const apiUtmParams = request.viewer ? config.api_utm_viewer : config.api_utm;
                    const urlResponse = getUrlResponse(json.url, apiUtmParams);

                    sendResponse(urlResponse)
                } else {
                    showError(json.message);
                }
            }, 'json');
            return true;  // Will respond asynchronously.
        }

        if (request.contentScriptQuery === 'sendPdffillerGmailAPI') {
            $.post(config.api_url, {
                filename: request.filename,
                pdf_file: request.file,
                type: 'GMAIL',
                from: request.from,
                subject: request.subject,
                out: 'json'
            }, function (json) {
                hideLoader();
                if (json.result){
                    sendResponse(json.url)
                } else {
                    showError(json.message);
                }
            }, 'json').fail(function(){
                hideLoader();
            });
            return true;  // Will respond asynchronously.
        }

        if (request.contentScriptQuery === 'getGmailFile') {
            var xhr = new XMLHttpRequest();
            xhr.open('GET', request.url, true);
            xhr.responseType = 'arraybuffer';
            xhr.onreadystatechange = function() {
                if (xhr.readyState == 4) {
                    if(xhr.status == 200) {
                        var file = base64ArrayBuffer(xhr.response);
                        sendResponse(file)
                    } else {
                        hideLoader();
                    }
                }
            };
            xhr.send(null);
            return true;  // Will respond asynchronously.
        }
    });

function showError(message, delay) {
    var message = message || "Something went wrong";
    var delay = delay || 3000;
    $('body').append(
        '<div id="filler-error">' +
        '<div class="error-wrap">' +
        '<div class="error-text">'+ message +'</div>' +
        '</div>' +
        '</div>'
    );
    if (delay > 0){
        setTimeout('hideError()', delay);
    }
}
