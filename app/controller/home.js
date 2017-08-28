'use strict';

module.exports = app => {
  class HomeController extends app.Controller {
    * index() {
      // this.ctx.body = 'hi, egg';
      yield this.ctx.render('paper/index.tpl', {});
    }
  }
  return HomeController;
};
