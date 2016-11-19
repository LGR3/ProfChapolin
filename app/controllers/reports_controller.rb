class ReportsController < ApplicationController
  def index
  end

  def show
  	@student = Student.where(cpf:params["cpf"]).first;
  	if (@student == nil)

  		flash["error_cpf"] = "CPF #{params["cpf"]} não foi encontrado";
  		redirect_to root_path
  	end
  end
end
