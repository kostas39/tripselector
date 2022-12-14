import { Application } from "@hotwired/stimulus"
import ReadMore from "stimulus-read-more"
import ScrollTo from 'stimulus-scroll-to'

const application = Application.start()
application.register('scroll-to', ScrollTo)

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }
