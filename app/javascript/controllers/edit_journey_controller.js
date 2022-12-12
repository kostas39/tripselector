import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="edit-journey"
export default class extends Controller {
  static targets = ["infos", "form", "card"]
  connect() {
    console.log("Hello edit")
  }

  displayForm() {
    console.log("Hello form")
    this.infosTarget.classList.add("d-none")
    this.formTarget.classList.remove("d-none")
  }

  update(event) {
    event.preventDefault()
    const url = this.formTarget.action
    fetch(url, {
      method: "PATCH",
      headers: { "Accept": "text/plain" },
      body: new FormData(this.formTarget)
    })
      .then(response => response.text())
      .then((data) => {
        console.log(data)
        this.cardTarget.outerHTML = data
      })
  }
}
