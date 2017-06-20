class CatController < ApplicationController
  def index
    @cats = Cat.all
    render :index
  end

  def show
    render :show
  end

  def new
    render :json
  end

  def create
    render :json
  end

  def edit
    render :json
  end

  def update
    render :json
  end

  def destroy
    render :json
  end

end
