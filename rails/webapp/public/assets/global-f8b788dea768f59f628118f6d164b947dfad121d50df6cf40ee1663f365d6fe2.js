(function() {
  this.addTodoItem = function(item_html) {
    $("#all-items").append(item_html);
    $("#new-item-name").val("");
    return $("#empty-item").hide();
  };

  this.deleteTodoItem = function(item_id) {
    var listItems;
    $("#item-id-" + item_id).remove();
    listItems = $("#all-items").children();
    if (listItems.length === 1) {
      return $("#empty-item").show();
    }
  };

}).call(this);
