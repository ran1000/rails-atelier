// This file is auto-generated by ./bin/rails stimulus:manifest:update
// Run that command whenever you add a new controller or create them with
// ./bin/rails generate stimulus controllerName
import Masonry from "masonry-layout";

import { application } from "./application"

import HelloController from "./hello_controller"
application.register("hello", HelloController)

// window.onload = () => {
const grid = document.querySelector(".grid");
const msnry = new Masonry(grid, {
  itemSelector: ".grid-item",
  gutter: 3,
  percentPosition: true,
  transitionDuration: 0,
});
// }
