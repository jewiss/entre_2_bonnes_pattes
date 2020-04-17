require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")
require("turbolinks").start()

import "bootstrap";


document.addEventListener('turbolinks:load', () => {

require("./multistep_form").reload()

})

