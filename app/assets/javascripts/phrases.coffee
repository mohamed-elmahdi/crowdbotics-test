$(document).ready ->
  $("#gen_link").on("ajax:success", (event, data, status, xhr) -> 
    $("#phrase-list").append data).on("ajax:error", (event) ->
    $("#phrase-test").text("No remaining phrases"))

$(document).ready ->
  $("#clear_link").on("ajax:success", (event, data, status, xhr) -> 
    $(".phrase").remove()
    $("#phrase-test").text(""))




