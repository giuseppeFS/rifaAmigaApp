class UsersController < ApplicationController
	before_action :set_user, only: [:edit, :update, :show, :destroy]

	def index
	  @users = User.all
	end

	def new
	  @user = User.new
	end

	def edit
	  
	end

	def create
	  render plain: params[:user].inspect
	  @user = User.new(user_params)
	  if @user.save
	  	flash[:sucess] = "Usuario criado com sucesso"
	  	redirect_to users_show(@user)
	  else
	  	render 'new'
	  end
	end

	def update
	  if @user.update(user_params)
	  	flash[:sucess] = "Usuario atualizado com sucesso"
	  	redirect_to users_show(@user)
	  else
	  	render 'edit'
	  end
	end

	def show
	  
	end

	def destroy
	  
	  @user.destroy
	  flash[:danger] = "Usuario deletado com sucesso"
	  redirect_to users_path
	end

	private

	  def set_user
	  	@user = User.find(params[:id])
	  end

	  def user_params
	  	params.require(:user).permit(:email, :password)

	  end

end