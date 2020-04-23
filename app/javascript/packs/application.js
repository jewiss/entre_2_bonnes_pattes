require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("turbolinks").start()

import "bootstrap";
import { initAutocomplete } from '../plugins/init_autocomplete';


import $ from 'jquery';

document.addEventListener('turbolinks:load', () => {
  // Call your JS functions here
  initAutocomplete();
  // require("./multistep_form").reload();

});
