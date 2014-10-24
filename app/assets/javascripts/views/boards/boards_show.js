TrelloClone.Views.BoardsShow = Backbone.View.extend({
  template: JST["boards/show"],

  initialize: function (options) {
    this.listenTo(this.model, "sync", this.render);
    // this.collection = this.model.lists();
  },

  render: function () {
    var content = this.template({
      board: this.model
    });

    this.$el.html(content);

    return this;
  }
});