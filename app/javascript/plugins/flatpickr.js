import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!
const datePickr = () => {
  flatpickr(".datepicker", {})
}

export { datePickr };
