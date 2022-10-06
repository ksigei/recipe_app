class UsersController < ApplicationController
  # GET /users or /users.json
  def index
    @user = current_user
  end

  # GET /users/1 or /users/1.json
  def show
    @user = current_user
    @recipes = @user.recent_recipes.where(user: @user)
  end

  # GET /users/1/edit
  def edit; end

  # DELETE /users/1 or /users/1.json
  def destroy
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Only allow a list of trusted parameters through.
  def user_params
    params.require(:user).permit(:name)
  end
end
