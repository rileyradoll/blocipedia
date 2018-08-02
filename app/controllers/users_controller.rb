class UsersController < ApplicationController

  def downgrade
    current_user.standard!

    flash[:notice] = "#{current_user.name} you're account has been downgraded"
    redirect_to edit_user_registration_path
  end
end
