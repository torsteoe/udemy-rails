ready = undefined
set_positions = undefined

set_positions =(updated_order=[])->
  $('.card').each (i) ->
    updated_order.push
      id: $(this).data('id')
      position: i+1
    $(this).attr 'data-pos', i+1
    console.log(updated_order)
  return updated_order

ready = ->
  console.log "Positions are set"
  console.log ""
  set_positions()
  $('.sortable').sortable()
  $('.sortable').sortable().bind 'sortupdate', (e, ui) ->
    updated_order = []
    updated_order = set_positions(updated_order)
    $.ajax
      type: 'PUT'
      url: '/portfolios/sort'
      data: order: updated_order
    return 
  return

$(document).ready ready
