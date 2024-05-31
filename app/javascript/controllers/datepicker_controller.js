import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr"; // You need to import this to use new flatpickr()


// Connects to data-controller="datepicker"
export default class extends Controller {
  static values = { dates: Object }

  connect() {
    this.options = {
      minDate: Date.now(),
    }
    this.disableDates();
    flatpickr(this.element, this.options)
  }

  disableDates() {
    // console.log(this.datesValue);
    if (this.datesValue.disable.length > 0) {
      this.options = {
        ...this.options,
        ...this.datesValue
      }
    } else {
      this.options
    }
    // console.log(this.options);
  }
}
