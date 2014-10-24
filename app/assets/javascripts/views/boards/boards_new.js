TrelloClone.Views.BoardsNew = Backbone.View.extend({
  template: JST["boards/new"],

  events: {
    "submit form": "submit"
  },

  render: function () {
    var content = this.template();

    this.$el.html(content);

    return this;
  },

  submit: function (event) {
    event.preventDefault();

    // var newBoard = new TrelloClone.Models.Board();
    var params = $(event.currentTarget).serializeJSON()["board"];
    var newBoard = new TrelloClone.Models.Board(params);

    // newBoard.set("title", $("#board_title").val());
    newBoard.save({}, {
      success: function () {
        TrelloClone.Collections.boards.add(newBoard);
        Backbone.history.navigate("", { trigger: true });
      }
    });
  }
});