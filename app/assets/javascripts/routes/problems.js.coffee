App.ProblemsRoute = Ember.Route.extend

  setupController: (controller, model) ->
    coins = @coins()
    controller.set('total', coins.total())
    controller.set('model', coins.random())

  coins: ->
    App.Coin.create()
