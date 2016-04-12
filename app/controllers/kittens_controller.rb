class KittensController < ApplicationController
  before_action :set_kitten, only: [:show, :update, :edit, :destroy]
  def new
    @kitten = Kitten.new 
  end

  def update
    if @kitten.update(kitten_params)
      redirect_to @kitten, notice: 'Succesfully updated'
    else
      render 'edit'
    end
  end

  def destroy
    @kitten.destroy
    redirect_to root_url, notice: 'Succesfully destroyed'
  end

  def edit
  end

  def create
    @kitten = Kitten.new(kitten_params)
    if @kitten.save
      redirect_to @kitten, notice: 'Succesfully created'
    else
      render 'new'
    end
  end

  def show
    respond_to do |format|
      format.html
      format.json { render json: @kitten }
    end
  end

  def index
    @kittens = Kitten.all.to_a
    respond_to do |format|
      format.html 
      format.json { render json: @kittens }
    end
  end
  
  private 
    def set_kitten
      @kitten = Kitten.find(params[:id])
    end
    
    def kitten_params
      params.require(:kitten).permit(:age, :cuteness, :softness, :name)
    end
end
