class UsersController < ApplicationController

  def downgrade
    @user = User.find(params[:id])
    @wikis = current_user.wikis

    if @user == current_user
      @wikis.update_all(private: false)
      current_user.standard!
      flash[:notice] = "#{current_user.name} you're account has been downgraded"
      redirect_to edit_user_registration_path
    end
  end
end
