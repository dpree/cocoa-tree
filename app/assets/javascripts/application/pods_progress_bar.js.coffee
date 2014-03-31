#= require nanobar.js
class @PodsProgressBar
  update: (factor) ->
    progress = factor * 100
    @nanobar.go(progress)
  start: ->
    @nanobar = new Nanobar
      target: $('.progress-container').get(0)
      id: 'pods-progress'
  