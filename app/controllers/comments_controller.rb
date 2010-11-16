class CommentsController < ApplicationController

  before_filter :find_restaurant

  def create
    @comment = @restaurant.comments.create(params[:comment])
    redirect_to restaurant_path(@restaurant)
  end

  def destroy
    @comment = @restaurant.comments.find(params[:id])
    @comment.destroy
    redirect_to restaurant_path(@restaurant)
  end

  private

  def find_restaurant
    unless @restaurant = Restaurant.find(params[:restaurant_id])
      flash[:error] = "No se encontro el restaurant"
      redirect_to home_path
    end
  end

end
