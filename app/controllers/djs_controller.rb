class DjsController < ApplicationController
  
  def index
    @djs = Dj.all
  end

  def show
    @dj = Dj.find_by(id: params[:id])
  end

  def new
  end

  def create
    @dj = Dj.new
    @dj.name = params[:name]
    @dj.crew = params[:crew]

    if @dj.save
      redirect_to djs_url, notice: "Dj created successfully."
    else
      render 'new'
    end
  end

  def edit
    @dj = Dj.find_by(id: params[:id])
  end

  def update
    @dj = Dj.find_by(id: params[:id])
    @dj.name = params[:name]
    @dj.crew = params[:crew]

    if @dj.save
      redirect_to djs_url, notice: "Dj updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @dj = Dj.find_by(id: params[:id])
    @dj.destroy

    redirect_to djs_url, notice: "Dj deleted."
  end
end
