class RegistersController < ApplicationController
  def index
    registers = PersonRegistration.where(active: true)
    render json: registers, status: :ok
  end

  def create
    register = PersonRegistration.new(register_params)

    if register.save
      render json: register, status: :created
    else
      render json: register.errors, status: :unprocessable_entity
    end
  end
  
  private

  def register_params
    params.require(:register).permit(:name, :cpf, :active)
  end
end
