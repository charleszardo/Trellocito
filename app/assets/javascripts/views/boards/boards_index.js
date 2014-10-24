TrelloClone.Views.BoardsIndex = Backbone.View.extend({
  template: JST["boards/index"],

  initialize: function (options) {
    this.listenTo(
      this.collection,
      "sync",
      this.render
    );
  },

  refresh: function () {
    this.collection.fetch();
  },

  render: function () {
    var content = this.template({
      boards: this.collection
    });

    this.$el.html(content);

    return this;
  }
});