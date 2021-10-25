import { getElements } from "@oddcamp/js-utils/src/selector"
import throttle from "raf-throttle"

import domReady from "../utils/dom-ready"

domReady(() => {
  const els = getElements(`.overflow-mask`)
  if (!els.length) return

  const setAttrs = (elem) => {
    const edges = []

    if (elem.scrollWidth > elem.offsetWidth) {
      if (elem.scrollLeft > 5) edges.push(`left`)
      if (elem.scrollLeft + elem.offsetWidth <= elem.scrollWidth - 5)
        edges.push(`right`)
    }

    if (elem.scrollHeight > elem.offsetHeight) {
      if (elem.scrollTop > 5) edges.push(`top`)
      if (elem.scrollTop + elem.offsetHeight <= elem.scrollHeight - 5)
        edges.push(`bottom`)
    }

    if (edges.length) {
      elem.setAttribute(`data-overflow-mask`, edges.join(` `))
    } else {
      elem.removeAttribute(`data-overflow-mask`)
    }
  }

  els.forEach((elem) => {
    elem.addEventListener(`scroll`, () => {
      setAttrs(elem)
    })

    window.addEventListener(
      `resize`,
      throttle(() => setAttrs(elem))
    )

    setAttrs(elem)
  })
})
