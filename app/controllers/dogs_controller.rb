class DogsController < ApplicationController
  before_action :find_dog, only: [:show, :edit, :update, :destroy]

  def index
    @dogs = Dog.all
  end

  def show
    @employees = @dog.employees
  end

  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.create(dog_params)
    redirect_to dog_path(@dog)
  end

  def update
    @dog.update(dog_params)
    redirect_to dog_path
  end

  def destroy
    @dog.destroy
    redirect_to dogs_path
  end


  private

  def dog_params
    params.require(:dog).permit(:name, :breed, :age)
  end

  def find_dog
    @dog = Dog.find(params[:id])
  end
end
