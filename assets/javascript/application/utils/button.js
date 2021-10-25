// set text helper

const setButtonComponentText = (el, text) => {
  if (!el.classList.contains(`button`)) return
  el.querySelector(`:scope > span`).innerHTML = text
}

export { setButtonComponentText }
