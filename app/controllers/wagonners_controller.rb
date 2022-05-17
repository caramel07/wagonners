class WagonnersController < ApplicationController
  def index
    @wagonners = Wagonner.all
  end

  def new
    @wagonner = Wagonner.new
    @batch = Batch.find(params[:batchs_id])
    @wagonner.batchs = @batch
  end

  def create
    @wagonner = Wagonner.new(params_wagonner)
    @batch = Batch.find(params[:batchs_id])
    @wagonner.batchs = @batch
    if @wagonner.save
      redirect_to(@wagonner)
    else
      render :new
    end
  end

  def show
    @wagonner = Wagonner.find(params[:id])
  end

  def edit
    @wagonner = Wagonner.find(params[:id])
  end

  def update
    @wagonner = Wagonner.find(params[:id])
    @wagonner.update(params_wagonner)
    redirect_to wagonner_path(@wagonner)
  end

  private

  def params_wagonner
    params.require(:wagonner).permit(:first_name, :last_name, :linkedin, :github, :email, :batchs_id)
  end
end
