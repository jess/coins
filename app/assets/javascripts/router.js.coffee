App.Router.map ()->
  @resource 'problems', path: '/'

App.Router.reopen
  location: 'auto'
  rootURL: '/'

