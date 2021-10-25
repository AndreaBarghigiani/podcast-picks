import { Application } from "stimulus"

let application

if (!application) {
  application = Application.start()
}

export default application
