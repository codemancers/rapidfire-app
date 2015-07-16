@RapidfireDemo ||= {}

RapidfireDemo.surveys = RapidfireDemo.cable.subscriptions.create "SurveysChannel",
  received: (data)->
    alert(data)
