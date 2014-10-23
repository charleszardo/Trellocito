window.TrelloClone = {
  Models: {},
  Collections: {},
  Routers: {},
  Utils: {},
  Views: {},

  initialize: function () {
    var view = new TrelloClone.Views.BoardsIndex();
    view.render();
  }

};

$(TrelloClone.initialize);