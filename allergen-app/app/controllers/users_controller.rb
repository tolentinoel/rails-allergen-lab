class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    get_user
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

        if @user.valid?
            @user.save
            redirect_to user_path(@user)
        else
            render :new
        end
  end

  def edit
    get_user
  end

  def update
    @user.update(user_params)
    if @user.save
       redirect_to user_path(@user)
    else
       render :edit
   end
  end

  def destroy
    get_user.destroy
    redirect_to users_path
  end

  private 

  def get_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name)
  end
end
