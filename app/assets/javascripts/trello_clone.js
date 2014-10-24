window.TrelloClone = {
  Models: {},
  Collections: {},
  Routers: {},
  Utils: {},
  Views: {},

  initialize: function () {
    var view = new TrelloClone.Views.BoardsIndex({
      collection: TrelloClone.Collections.boards
    });

    TrelloClone.Collections.boards.fetch();
    $("body").append(view.render().$el);

  }

};
