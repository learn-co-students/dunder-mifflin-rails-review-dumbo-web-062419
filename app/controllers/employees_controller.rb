class EmployeesController < ApplicationController
  def index
    @employees= Employee.all
  end

  def show
    find_employee
  end

  def edit
    find_employee
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee= Employee.create(employee_params)
    if @employee.valid?
      redirect_to @employee 
    else 
      flash[:errors]= @employee.errors.full_messages
      redirect_to new_employee_path
    end
  end

  def update
    find_employee
    @employee.update(employee_params)
    redirect_to @employee
  end
  
  private
  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :img_url, :dog_id)
  end

  def find_employee
    @employee= Employee.find(params[:id])
  end

end
