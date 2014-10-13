App.Coin = Ember.Object.extend
  value: 0
  name: 'coin'
  collection: []
  coins_map: ->
    [
      App.Penny.create(),
      App.Nickel.create(),
      App.Dime.create(),
      App.Quarter.create()
    ]

  total: ->
    val = 0
    for c in @random()
      val += c.value
    val

  random: ->

    if @collection.length > 0
      @collection
    else
      coins = @coins_map()
      for num in [3.._.random(4, 10)]
        @collection.push(coins[_.random(coins.length - 1)])
      @collection
