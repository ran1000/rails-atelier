import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="cards"
export default class extends Controller {
  connect() {
  }

  filter(event) {
    console.log(this.element.innerHTML)
  }
}
