class BatchsController < ApplicationController
  def index
    @batchs = Batch.all
  end

  def new
    @batch = Batch.new
  end

  def create
    @batch = Batch.new(params_batch)
    if @batch.save
      redirect_to(@batch)
    else
      render :new
    end
  end

  def show
    @batch = Batch.find(params[:id])
  end

  def edit
    @batch = Batch.find(params[:id])
  end

  def update
    @batch = Batch.find(params[:id])
    @batch.update(params_batch)
    redirect_to batch_path(@batch)
  end

  private

  def params_batch
    params.require(:batch).permit(:batch_number)
  end
end
