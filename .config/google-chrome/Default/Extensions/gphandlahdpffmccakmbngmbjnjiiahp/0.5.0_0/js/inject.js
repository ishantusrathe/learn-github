var app = window.app = window.app || {};
$(function(){
    setTimeout(searchLink, 1000 * 2);
    $(window).on('hashchange',function(){
        setTimeout(searchLink, 1000);
    });
    $(document).on('mouseover', '.pdffiller-link', function(){
        $(this).addClass('T-I-JW');
    });
    $(document).on('mouseout', '.pdffiller-link', function(){
        $(this).removeClass('T-I-JW');
    });
    $(document).on('click', '.pdffiller-link', function(){
        var attachment = $(this).parents('.aZo.N5jrZb');
        var file = attachment.attr('download_url').split(':');
        var name = decodeURI(file[1]);
        var url = file[2] + ':' + file[3];
        getFile(url, name, 'GMAIL');
    });
    $(document).on('click', '.sendToPdfFiller', function(){
        var url = $(this).data('url');
        var tmp = url.split('/');
        var name = tmp[tmp.length - 1];
        showLoader();
        sendToPdffillerAPI(url, name);
    });
});

function getFile(url, filename, type = 'CHROME.EXT') {
    showLoader();
    chrome.runtime.sendMessage(
        { contentScriptQuery: "getGmailFile", url },
        file => {
            hideLoader();
            switch (type){
                case 'GMAIL':
                    var from = $('.iv .gD').attr('email');
                    var subject = $('.nH .ha .hP').html();
                    sendToPdffillerGmailApi(file, filename, from, subject);
                    break;
                case 'CHROME.EXT':
                    sendToPdffillerAPI(file, filename);
                    break;
            }
        }
    );
}

function sendToPdffillerAPI(url, filename, viewer) {
    chrome.runtime.sendMessage(
        { contentScriptQuery: "sendPdffillerAPI", url, filename, viewer },
        result => {
            hideLoader();
            window.open(result, '_blank');
        });
}
// function convertToPdf(url, width, height) {
//     console.log(url)
//     chrome.runtime.sendMessage(
//         { contentScriptQuery: "convertHTML", url, width, height },
//         result => {
//             console.log(result)
//             // hideLoader();
//             // sendToPdffillerAPI(result.url, result.filename, 'ext');
//         });
// }
function sendToPdffillerGmailApi(file, filename, from, subject) {
    chrome.runtime.sendMessage(
        { contentScriptQuery: "sendPdffillerGmailAPI", filename, file, from, subject },
        result => {
            hideLoader();
            window.open(result, '_blank');
        }
    );
}
function searchLink() {
    var links = $('a');
    if(links.length){
        links.each(function(){
            var href = $(this).attr('href');
            var type = false;
            if(typeof href != 'undefined'){
                type = href.substr(href.length - 4).toLowerCase();

                if (href.toLowerCase().indexOf('file') !== -1) {
                    return;
                }
                // type = href.toLowerCase().indexOf('.pdf') !== -1;
            }
            if (type === '.pdf') {
                if (href.indexOf('http') === -1) {
                    if (href.sub(0, 1) === '/') {
                        href = window.location.origin + href;
                    } else {
                        href = window.location.origin + '/' + href;
                    }
                }

                var pos = $(this).position();
                var left = pos.left + $(this).width() + 10;
                var top = pos.top + $(this).height() - 22;
                $(this).after('<div class="sendToPdfFiller" data-url="'+ href +'"' +
                    ' style="position: static; width: 40px; display: inline-block; margin-left: 10px;" title="Open with PDFfiller"><img style="background: none" src="'+ app.browser.getUrl('/img/icon-fill.png') +'"></div>');

            }
        });
    }
}
function showLoader() {
    $('body').append(
        '<div id="filler-loader">' +
        '<div class="loader-wrap">' +
        '<div class="loader-icon"><img src="'+ app.browser.getUrl('/img/loader.gif') +'"></div>' +
        '<div class="loader-text">Loading, please wait...</div>' +
        '</div>' +
        '</div>'
    )
}
function hideLoader() {
    $('#filler-loader').remove();
}
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
function hideError() {
    $('#filler-error').remove();
}
