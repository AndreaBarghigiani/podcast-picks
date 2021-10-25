import A11yDialog from "a11y-dialog"
import {
  delegateEventListener,
  // triggerEvent,
} from "@oddcamp/js-utils/src/event"

delegateEventListener(`[data-modal-show]`, `click`, (e, triggerEl) => {
  e.preventDefault()

  const id = triggerEl.getAttribute(`data-modal-show`)
  const modalEl = document.querySelector(`#modal-${id}`)

  if (!modalEl) return

  let { Modal } = modalEl

  if (!Modal) {
    Modal = new A11yDialog(modalEl)
    modalEl.Modal = Modal

    Modal.on(`show`, () =>
      document.documentElement.classList.add(`--disable-scroll`)
    )
    Modal.on(`hide`, () =>
      document.documentElement.classList.remove(`--disable-scroll`)
    )

    const event = new CustomEvent(`modalInited`, { detail: { triggerEl } })
    modalEl.dispatchEvent(event)
    // triggerEvent(modalEl, `modalInited`)
  }

  Modal.show()
})

delegateEventListener(`.js--modal-close`, `click`, (e, triggerEl) => {
  const modal = triggerEl.closest(`.modal`)
  if (!modal || !modal.Modal) return

  modal.Modal.hide()
})
