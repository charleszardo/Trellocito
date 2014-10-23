window.TrelloClone = {
  Models: {},
  Collections: {},
  Routers: {},
  Utils: {},
  Views: {},

  initialize: function () {
    var view = new TrelloClone.Views.BoardsIndex({
      boards: TrelloClone.Collections.boards
    });

    TrelloClone.Collections.boards.fetch({
      success: function () {
        $("body").append(view.render().$el);
      }
    });
  }

};

$(TrelloClone.initialize);