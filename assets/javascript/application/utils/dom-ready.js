export default (domReady) => {
  if (document.readyState === `loading`) {
    document.addEventListener(`DOMContentLoaded`, domReady)
  } else {
    domReady()
  }
}
