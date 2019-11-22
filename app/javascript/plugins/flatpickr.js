import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css"

flatpickr(".datepicker", {
  minDate: "today",
  altInput: true,
  altFormat: "F j, Y",
  dateFormat: "Y-m-d",
})
