class WelcomeController < ApplicationController
  layout 'welcome'
  def index
    @categories = Category.all
  end
end
