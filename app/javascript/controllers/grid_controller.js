import { Controller } from "@hotwired/stimulus"
import imagesLoaded from "imagesloaded";

// Connects to data-controller="grid"
export default class extends Controller {
  connect() {
    console.log("Hello from Stimulus Grid");

    // Dynamic Row Span
    // const allItems = document.getElementsByClassName("item");

    // function resizeGridItem(item) {
    //   const grid = document.querySelector(".grid");
    //   const rowHeight = parseInt(window.getComputedStyle(grid).getPropertyValue("grid-auto-rows"));
    //   const rowGap = parseInt(window.getComputedStyle(grid).getPropertyValue("grid-row-gap"));
    //   const rowSpan = Math.ceil((item.querySelector(".content").getBoundingClientRect().height + rowGap) / (rowHeight + rowGap));
    //   item.style.gridRowEnd = "span " + rowSpan;
    // }

    // function resizeAllGridItems(items) {
    //   Array.from(items).forEach((item) => {
    //     resizeGridItem(item);
    //   });
    // }

    // function resizeInstance(instance) {
    //   const item = instance.elements[0];
    //   resizeGridItem(item);
    // }

    // window.onload = resizeAllGridItems(allItems);
    // window.addEventListener("resize", resizeAllGridItems(allItems));
    // Array.from(allItems).forEach((item) => {
    //   // This function passes the items on the resizeInstance after loading the image
    //   imagesLoaded(item, resizeInstance);
    // });
  }

  updateGrid() {
    console.log("resizing");
  }
}
