class RoutesController < ApplicationController
  before_action :set_params, only: [:show, :edit, :update, :destroy]

  def index
    @routes = Route.all
  end

  def show
  end

  def new
    @route = Route.new
  end

  def edit
  end

  def create
    @route = Route.new(routes_params)
    if @route.save
      redirect_to @route
    else
      render :new
    end
  end

  def update
    if @route.update(routes_params)
      redirect_to @route
    else
      render :edit
    end
  end

  def destroy
    @route.destroy
    redirect_to routes_url
  end
  private
  def set_params
    @route = Route.find(params[:id])
  end
  def routes_params
    params.require(:route).permit(:name)
  end

end