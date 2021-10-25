import { delegateEventListener } from "@oddcamp/js-utils/src/event"
import { getElements } from "@oddcamp/js-utils/src/selector"

import domReady from "../../utils/dom-ready"

// placeholder state for <select>'s

const toggleClass = (el) => {
  el.classList.toggle(`--placeholder`, !el.value)
}

delegateEventListener(`select.form-input`, `change`, (e) =>
  toggleClass(e.target)
)

delegateEventListener(`select.form-input`, `blur`, (e) => toggleClass(e.target))

domReady(() => {
  getElements(`select.form-input`).forEach((el) => toggleClass(el))
})
