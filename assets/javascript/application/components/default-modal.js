import { delegateEventListener } from "@oddcamp/js-utils/src/event"

// close the modal on outside click

delegateEventListener(`.default-modal-overlay`, `click`, (e) => {
  if (!e.target.closest(`.default-modal`)) {
    const modalEl = e.target.closest(`.modal`)

    if (modalEl) {
      modalEl.Modal.hide()
    }
  }
})
