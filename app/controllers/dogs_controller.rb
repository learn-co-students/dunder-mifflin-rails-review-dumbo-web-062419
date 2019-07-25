class DogsController < ApplicationController
    before_action :find_dog, only: [:show,:edit,:update,:destroy]
    def index
        @dogs = Dog.all
    end

    def show
        @employees = Employee.all
    end

    def new

    end

    def create

    end

    def edit

    end

    def update

    end

    def destroy

    end


    def find_dog
        @dog = Dog.find(params[:id])
    end

    def dog_params
        params.require(:dog).permit(:name,:breed,:age)
    end
end
