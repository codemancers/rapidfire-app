class @ResultChart
  constructor: (@questionGroupId)->
    @container = $("#js-json-results")

  onJSONResults: (data, status, xhr)=>
    $.each data, (index, resultObj)=>
      if $.isArray(resultObj.results)
        @appendNonAggregatableResults(resultObj)
      else
        @appendAggregatableResults(resultObj)

  appendNonAggregatableResults: (resultObj)->
    $resultsHtml = $ JST["templates/non_aggregatable"](resultObj: resultObj)
    $resultsHtml.appendTo @container

  appendAggregatableResults: (resultObj)->
    colors = ["#F33E6F", "#2D91EA", "#F7464A", "#69D2E7", "#4D5360", "#F38630", "black"]

    # convert results to chart.js data format
    # fetch all values, and assign a color
    chartData = $.map _.values(resultObj.results), (value, index)->
      value: value, color: colors[index]
    legendData = $.map _.keys(resultObj.results), (key, index)->
      key: key, color: colors[index]

    $resultsHtml = $ JST["templates/aggregatable"]
      resultObj:  resultObj
      legendData: legendData
    $resultsHtml.appendTo @container

    ctx = $resultsHtml.find("canvas").get(0).getContext("2d")
    new Chart(ctx).Doughnut(chartData)

  render: ->
    jsonUrl = "/rapidfire/question_groups/#{@questionGroupId}/results"
    $.ajax jsonUrl, dataType: "json", success: @onJSONResults
