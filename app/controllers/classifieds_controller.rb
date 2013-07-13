class ClassifiedsController < ApplicationController
  def new
    @classified = Classified.new
  end

  def create
    safe_classified = params.require(:classified).permit(:title, :description, :prices)
    @classified = Classified.new safe_classified
    @classified.category = Category.from_params params[:category]
    @classified.save
    redirect_to @classified
  end
end
