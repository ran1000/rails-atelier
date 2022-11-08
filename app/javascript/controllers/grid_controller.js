import { Controller } from "@hotwired/stimulus"
import imagesLoaded from "imagesloaded";

// Dynamic Row Span
// Connects to data-controller="grid"
export default class extends Controller {
  static targets = ["items"]

  resizeAllGridItems() {
    Array.from(this.itemsTargets).forEach((item) => {
      this.resizeGridItem(item);
    });
  };

  resizeInstance(instance) {
    const item = instance.elements[0];
    this.resizeGridItem(item);
  };

  resizeGridItem(item) {
    const rowHeight = parseInt(window.getComputedStyle(this.element).getPropertyValue("grid-auto-rows"));
    const rowGap = parseInt(window.getComputedStyle(this.element).getPropertyValue("grid-row-gap"));
    const rowSpan = Math.ceil((item.querySelector(".content").getBoundingClientRect().height + rowGap) / (rowHeight + rowGap));
    item.style.gridRowEnd = "span " + rowSpan;
  };

  connect() {
    this.updateGrid();
    Array.from(this.itemsTarget).forEach((item) => {
      // This function passes the items on the resizeInstance after loading the image
      imagesLoaded(item, resizeInstance);
    });
  }

  updateGrid() {
    this.resizeAllGridItems();
  }
}
