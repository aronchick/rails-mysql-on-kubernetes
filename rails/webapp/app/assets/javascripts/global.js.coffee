@addTodoItem = (item_html) ->
  $("#all-items").append(item_html);
  $("#new-item-name").val("");
  $("#empty-item").hide();

@deleteTodoItem = (item_id) ->
  $("#item-id-" + item_id).remove();
  listItems = $("#all-items").children();
  if(listItems.length == 1)
    $("#empty-item").show();
