TrelloClone.Views.BoardsIndex = Backbone.View.extend({
  initialize: function (options) {
    this.boards = options.boards;
  },

  render: function () {
    var $ul = $("<ul>");

    this.boards.each(function (board) {
      var $li = $("<li>");

      $li.text(board.get("title"));

      $ul.append($li);
    });

    this.$el.html($ul);

    return this;
  }
});