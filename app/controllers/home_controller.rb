class HomeController < ApplicationController
  def index
    @page = Page.find_or_create_by(
        path: 'home',
        title: 'Home',
        required: true
    )
  end
end
