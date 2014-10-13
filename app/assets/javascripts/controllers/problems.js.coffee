App.ProblemsController = Ember.ArrayController.extend

  correctAnswer: false
  incorrectAnswer: false

  actions:

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
      location.reload()
