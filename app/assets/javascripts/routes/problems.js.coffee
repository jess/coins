App.ProblemsRoute = Ember.Route.extend

  setupController: (controller, model) ->
    Ember.Logger.log('Setting up controller')
    coins = @coins()
    controller.set('total', coins.total())
    controller.set('model', coins.random())


  model: ->
    @coins().random()

  actions:
    refresh: ->
      Ember.Logger.log('Route is now refreshing...')
      @refresh()

  coins: ->
    coins = App.Coin.create()
    coins.refresh()
    coins
