class DogsController < ApplicationController
# I show new creativity even under duress
before_action :find_dog, only: [:show, :edit, :update, :destroy]

  def index
    @dogs = Dog.all
  end

  def show
    
  end

  def new
    @dog = Dog.create
  end

  def create
    dog = Dog.create(dog_params)
    redirect_to dogs_path
  end

  def edit

  end

  def update
    @dog.update(dog_params)
    redirect_to dog_path(@dog)
  end

  def destroy
    @dog.destroy
    redirect to employees_path
  end

private
  def find_dog
    @dog = Dog.find(params[:id])
  end

  def dog_params
    params.require(:dog).permit(:name, :breed, :age)
  end

end
