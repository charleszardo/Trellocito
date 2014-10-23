TrelloClone.Views.BoardsIndex = Backbone.View.extend({
  render: function () {
    var $ul = $("<ul>");

    TrelloClone.Collections.Boards.each(function (board) {
      var $li = $("<li>");

      $li.text(board.get("title"));

      $ul.append($li);
    });

    this.$el.html($ul);

    return this;
  }
});