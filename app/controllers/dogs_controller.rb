class DogsController < ApplicationController
  def index
    @dogs= Dog.all
   # @employees= Employee.all
  end

  def show
    dog_find
  end

  private
  def dog_params
    params.require(:dog).permit(:name, :breed, :age)
  end

  def dog_find
    @dog = Dog.find(params[:id])
  end

end
