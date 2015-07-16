@RapidfireDemo ||= {}

RapidfireDemo.surveys = RapidfireDemo.cable.subscriptions.create "SurveysChannel",
  received: (data)->
    alert "survey " + data.survey_id + " has been attempted just now"
