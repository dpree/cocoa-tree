class @PodsRenderer
  renderPods: (pods) ->
    html = JST['templates/pods']
      pods: pods
    $('#list_placeholder').html(html)
    $(".timeago").timeago()
