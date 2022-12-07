import { Controller } from '@hotwired/stimulus';

import flatpickr from "flatpickr";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";

export default class extends Controller {
  static targets = [ "startDate", "endDate" ]
  connect() {
    console.log("Hello")
    flatpickr(this.startDateTarget, {})
    flatpickr(this.endDateTarget, {})
  }
}
