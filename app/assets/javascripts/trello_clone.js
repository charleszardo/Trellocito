window.TrelloClone = {
  Models: {},
  Collections: {},
  Routers: {},
  Utils: {},
  Views: {},

  initialize: function () {
    new TrelloClone.Routers.AppRouter();

    Backbone.history.start();
  }

};