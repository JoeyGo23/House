class MixesController < ApplicationController

  def index
    @mixes = Mix.all
  end

  def show
    @mix = Mix.find_by(id: params[:id])
  end

  def new
  end

  def create
    @mix = Mix.new
    @mix.name = params[:name]
    @mix.url = params[:url]
    @mix.last_modified_string = params[:last_modified_string]
    @mix.size = params[:size]
    @mix.event = params[:event]
    @mix.dj_id = params[:dj_id]

    if @mix.save
      redirect_to mixes_url, notice: "Mix created successfully."
    else
      render 'new'
    end
  end

  def edit
    @mix = Mix.find_by(id: params[:id])
  end

  def update
    @mix = Mix.find_by(id: params[:id])
    @mix.name = params[:name]
    @mix.url = params[:url]
    @mix.last_modified_string = params[:last_modified_string]
    @mix.size = params[:size]
    @mix.event = params[:event]
    @mix.dj_id = params[:dj_id]

    if @mix.save
      redirect_to mixes_url, notice: "Mix updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @mix = Mix.find_by(id: params[:id])
    @mix.destroy

    redirect_to mixes_url, notice: "Mix deleted."
  end
end
