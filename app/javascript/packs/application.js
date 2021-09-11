// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import 'bootstrap';
import { initSelect2 } from '../components/init_select2';
import { showDestroyButtons } from '../components/show_destroy_button';
import { newMoviePreview } from '../components/new_movie_preview';
import { displayArrow } from '../components/display_arrow';
import { arrowScroll } from '../components/arrow_scroll';


Rails.start()
Turbolinks.start()
ActiveStorage.start()

document.addEventListener("turbolinks:load", function() {
  initSelect2();
  showDestroyButtons();
  newMoviePreview();
  displayArrow();
  arrowScroll();
});
