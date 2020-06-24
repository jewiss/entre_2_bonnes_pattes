require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("turbolinks").start()

import "bootstrap";
import { initAutocomplete } from '../plugins/init_autocomplete';
import { activeClass } from '../components/specie_choice';
import { initMapbox } from '../plugins/init_mapbox';
import { initSelect2 } from '../plugins/init_select2';


import $ from 'jquery';

document.addEventListener('turbolinks:load', () => {
  // Call your JS functions here
  // require("./multistep_form").reload()
  initSelect2();
  initAutocomplete();
  activeClass();
  initMapbox();
});
