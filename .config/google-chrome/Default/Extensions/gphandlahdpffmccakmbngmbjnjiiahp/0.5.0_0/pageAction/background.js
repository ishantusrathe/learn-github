/*
Copyright 2014 Mozilla Foundation

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/

'use strict';

(function PageActionClosure() {
  /**z
   * @param {number} tabId - ID of tab where the page action will be shown.
   * @param {string} url - URL to be displayed in page action.
   */
  function showPageAction(tabId, displayUrl) {
    // rewriteUrlClosure in viewer.js ensures that the URL looks like
    // chrome-extension://[extensionid]/http://example.com/file.pdf

  }

  chrome.runtime.onMessage.addListener(function(message, sender) {
    if (message === 'showPageAction' && sender.tab) {
      showPageAction(sender.tab.id, sender.tab.url);
    }
  });
})();
