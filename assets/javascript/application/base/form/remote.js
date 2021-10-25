import { delegateEventListener } from "@oddcamp/js-utils/src/event"
import { getElements } from "@oddcamp/js-utils/src/selector"

// remote forms event handling (success/error states)

const getSubmitButton = (e) => {
  return e.target.querySelector(`button[type="submit"]`)
}

const getResponseEl = (e) => {
  return e.target.querySelector(`.form-response`)
}

// before

delegateEventListener(`form[data-remote="true"]`, `ajax:before`, (e) => {
  const responseEl = getResponseEl(e)
  if (responseEl) {
    responseEl.classList.remove(`form-response--success`)
    responseEl.classList.remove(`form-response--error`)
  }

  getElements(`.form-error`, e.target).forEach((el) => el.remove())
  getSubmitButton(e).disabled = true
})

// complete

delegateEventListener(`form[data-remote="true"]`, `ajax:complete`, (e) => {
  getSubmitButton(e).disabled = false
})

// error

delegateEventListener(`form[data-remote="true"]`, `ajax:error`, (e) => {
  const responseEl = getResponseEl(e)
  if (responseEl) {
    responseEl.classList.add(`form-response--error`)
    responseEl.innerHTML = `Oops! Please fix the fields and submit again:`
  }

  Object.entries(e.detail[0].errors).forEach(([inputName, message]) => {
    const element = e.target.querySelector(`[name*="${inputName}"]`)
    if (element) {
      element.insertAdjacentHTML(
        `afterend`,
        `<div class="form-error">${message}</div>`
      )
    }
  })

  const input = e.target
    .querySelector(`.form-error`)
    .closest(`.form-row`)
    .querySelector(`input, textarea, select`)

  if (input) {
    input.focus()
  }
})

// success

delegateEventListener(`form[data-remote="true"]`, `ajax:success`, (e) => {
  const location = e.detail[2].getResponseHeader(`location`)
  const responseEl = getResponseEl(e)
  if (responseEl) {
    responseEl.classList.add(`form-response--success`)
    responseEl.innerHTML = location ? `One moment…` : e.detail[1]
  }

  e.target.reset()

  if (location) {
    window.location.href = location
  }
})
