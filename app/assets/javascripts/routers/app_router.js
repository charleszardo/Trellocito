TrelloClone.Routers.AppRouter = Backbone.Router.extend({
  routes: {
    "": "boardsIndex",
    "boards/new": "boardsNew",
    "boards/:id": "boardShow"
  },

  boardsIndex: function () {
    var indexView = new TrelloClone.Views.BoardsIndex({
      collection: TrelloClone.Collections.boards
    });

    TrelloClone.Collections.boards.fetch();
    $("body").html(indexView.render().$el);
  },

  boardsNew: function () {
    var newView = new TrelloClone.Views.BoardsNew();
    $("body").html(newView.render().$el);
  },

  boardShow: function (id) {
    var board = TrelloClone.Collections.boards.getOrFetch(id);

    var showView = new TrelloClone.Views.BoardsShow({
      model: board
    });

    $("body").html(showView.render().$el);
  }
});