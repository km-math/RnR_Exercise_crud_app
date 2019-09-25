class StaffController < ApplicationController
  def index
    @staff = Staff.all
  end

  def show
    @staff = Staff.find(params[:id])
  end

  def new
    @staff = Staff.new
  end

  def edit
    @staff = Staff.find(params[:id])
  end

  def create
    @staff = Staff.new(staff_params)

    if @staff.save
      redirect_to @staff
    else
      render 'new'
    end
  end

  def update
    @staff = Staff.find(params[:id])

    if @staff.update(staff_params)
      redirect_to @staff
    else
      render 'edit'
    end
  end

  def destroy
    @staff = Staff.find(params[:id])
    @staff.destroy

    redirect_to controller: 'staff'
  end

  private
    def staff_params
      params.require(:staff).permit(:name, :age, :gender, :designation)
    end

end
