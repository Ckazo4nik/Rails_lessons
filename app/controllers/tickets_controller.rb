class TicketsController < ApplicationController
  before_action :set_params, only: [:show, :edit, :update, :destroy]
  def index
    @tickets = Ticket.all
  end

  def show
  end

  def new
    @ticket = Ticket.new
  end

  def edit
  end

  def create
    @ticket = Ticket.new(tickets_params)
    if @ticket.save
      redirect_to @ticket
    else
      render :new
    end
  end

  def update
    if @ticket.update(tickets_params)
      redirect_to @ticket
    else
      render :edit
    end
  end

  def destroy
    @ticket.destroy
    redirect_to tickets_url
  end
  private
  def set_params
    @ticket = Ticket.find(params[:id])
  end
  def tickets_params
    params.require(:ticket).permit(:route_id,:first_name,:last_name,:train_id)
  end
end