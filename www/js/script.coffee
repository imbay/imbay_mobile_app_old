app =
  initialize: ->
    document.addEventListener('deviceready', this.onDeviceReady.bind(this), false)
  onDeviceReady: ->
    this.receivedEvent('deviceready')
  receivedEvent: (id)->
      parentElement = document.getElementById(id)
      listeningElement = parentElement.querySelector('.listening')
      receivedElement = parentElement.querySelector('.received')

      listeningElement.setAttribute('style', 'display:none;')
      receivedElement.setAttribute('style', 'display:block;')

      console.log('Received Event: ' + id)
app.initialize();
