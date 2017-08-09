class PubsController < ApplicationController
  before_action :set_pub, only: [:show, :edit, :update]

  def index
    @pubs = Pub.all
  end

  def show
  end

  def new
    @pub = Pub.new
  end

  def create
    @pub = Pub.new(pub_params)
    if @pub.save
      redirect_to @pub # same as pub_path(@pub)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @pub.update(pub_params)
      redirect_to @pub
    else
      render :edit
    end
  end

  private

  def set_pub
    @pub = Pub.find(params[:id])
  end

  def pub_params
    params.require(:pub).permit(:name, :description, :address, :happy_hour_price)
  end
end
