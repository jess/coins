App.ProblemsController = Ember.ArrayController.extend

  correctAnswer: false
  incorrectAnswer: false

  actions:

    sort: ->
      newModel = _.shuffle(@get('model'))
      newOrder = newModel.map((coin) -> return coin.name).toString()
      oldOrder = @get('model').map((coin) -> return coin.name).toString()
      while newOrder == oldOrder
        newModel = _.shuffle(@get('model'))
        newOrder = newModel.map((coin) -> return coin.name).toString()

      @set('model', newModel)

    solveAns: ->
      total = @get('total').toString()
      ans = @get('userAns').toString()
      if total == ans
        @set('incorrectAnswer', false)
        @set('correctAnswer', true)
      else
        @set('incorrectAnswer', true)
        @set('userAns', '')
        $('.user-ans').focus()

    getNewProblem: ->
      @send('refresh')
      @set('incorrectAnswer', false)
      @set('correctAnswer', false)
      @set('userAns', '')
      $('.user-ans').focus()
      #@transitionToRoute('problems')
      #location.reload()
