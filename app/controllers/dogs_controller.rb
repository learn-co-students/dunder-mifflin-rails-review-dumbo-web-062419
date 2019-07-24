class DogsController < ApplicationController
  before_action :find_dog, only: [:show, :create, :update, :destroy]

  def index
    @dogs = Dog.all.sort_by { |d| d.employees.count }.reverse
  end

  def new
    @dog = Dog.new
  end

  def create

  end

  def show

  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def find_dog
    @dog = Dog.find(params[:id])
  end

end
