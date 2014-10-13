App.StudentAnswerView = Ember.TextField.extend
  didInsertElement: ->
    this.$().focus();

Ember.Handlebars.helper('student-answer', App.StudentAnswerView)
