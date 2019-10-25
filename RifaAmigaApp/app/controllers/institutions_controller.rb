class InstitutionsController < ApplicationController
	before_action :set_institution, only: [:edit, :update, :show, :destroy]

	def index
	  @institutions = Institution.all
	end

	def new
	  @institution = Institution.new
	end

	def edit
	  
	end

	def create
	  render plain: params[:institution].inspect
	  @institution = Institution.new(institution_params)
	  if @institution.save
	  	flash[:sucess] = "Instituiçao criada com sucesso"
	  	redirect_to institutions_show(@institution)
	  else
	  	render 'new'
	  end
	end

	def update
	  if @institution.update(institution_params)
	  	flash[:sucess] = "Instituiçao atualizada com sucesso"
	  	redirect_to institutions_show(@institution)
	  else
	  	render 'edit'
	  end
	end

	def show
	  
	end

	def destroy
	  
	  @institution.destroy
	  flash[:danger] = "Instituiçao deletada com sucesso"
	  redirect_to institutions_path
	end

	private

	  def set_institution
	  	@institution = Institution.find(params[:id])
	  end

	  def institution_params
	  	params.require(:institution).permit(:email, :password)
	  end

end