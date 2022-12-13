import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="edit-journey"
export default class extends Controller {
  static targets = ["infos", "form", "card", "title", "show"]

  connect() {
    console.log("hello once again")
  }

  displayForm(event) {
    const element = event.target
    const index = element.dataset.index
    this.infosTargets[index].classList.add("d-none")
    this.formTargets[index].classList.remove("d-none")
  }

  update(event) {
    event.preventDefault()
    const element = event.target
    console.log(element)
    const index = element.dataset.index
    const url = this.formTargets[index].action
    fetch(url, {
      method: "PATCH",
      headers: { "Accept": "text/plain" },
      body: new FormData(this.formTargets[index])
    })
      .then(response => response.text())
      .then((data) => {
        this.showTarget.innerHTML = data
        console.log(data)
      })
  }

}
