/**
 * BRAINIAC SaaS Blueprint — Landing Page Scripts
 * Handles OS tab switching and clipboard copy for the Quick Start terminal.
 */

'use strict';

/**
 * Switch visible command panel based on the selected OS tab.
 * @param {Event} event - Click event from the tab element.
 * @param {string} os   - OS identifier ('mac' | 'linux' | 'windows').
 */
function switchOs(event, os) {
  document.querySelectorAll('.cmd-panel').forEach(function (el) {
    el.classList.remove('active');
  });
  document.querySelectorAll('.terminal-tab').forEach(function (el) {
    el.classList.remove('active');
  });

  document.getElementById('cmd-' + os).classList.add('active');
  event.target.classList.add('active');
}

/**
 * Copy the commands from the currently active OS panel to the clipboard
 * and show a toast notification.
 */
function copyInstall() {
  var activePanel = document.querySelector('.cmd-panel.active');
  var commands = Array.from(activePanel.querySelectorAll('.command'))
    .map(function (el) { return el.innerText; })
    .join('\n');

  navigator.clipboard.writeText(commands).then(function () {
    var toast = document.getElementById('copyToast');
    toast.classList.add('show');
    setTimeout(function () {
      toast.classList.remove('show');
    }, 2500);
  });
}


