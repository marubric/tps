import '../shared/polyfills';
import Turbolinks from 'turbolinks';
import Rails from 'rails-ujs';
import ActiveStorage from '../shared/activestorage/ujs';
import jQuery from 'jquery';

import '../shared/sentry';
import '../shared/rails-ujs-fix';
import '../shared/safari-11-file-xhr-workaround';
import '../shared/autocomplete';
import '../shared/remote-input';
import '../shared/franceconnect';

import '../old_design/carto';

// Start Rails helpers
Rails.start();
Turbolinks.start();
ActiveStorage.start();

// Disable jQuery-driven animations during tests
if (process.env['RAILS_ENV'] === 'test') {
  jQuery.fx.off = true;
}

// Export jQuery globally for legacy Javascript files used in the old design
jQuery.rails = Rails;
window.$ = jQuery;
window.jQuery = jQuery;
