import { Controller } from "stimulus"

import application from "../utils/application"

class IndexPageClipboard extends Controller {
  static targets = [`source`]

  copy() {
    this.sourceTarget.select()
    document.execCommand(`copy`)
    alert(`Copied!`)
  }
}

application.register(`index-page-clipboard`, IndexPageClipboard)
