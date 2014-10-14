App.Router.map ()->
  @resource 'problems', path: '/'
  @route 'about'

App.Router.reopen
  location: 'auto'
  rootURL: '/'

