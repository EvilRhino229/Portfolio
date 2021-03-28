class UsersController < ApplicationController
  # before_action :authenticate_user!, only: [:admin_dash]
    def admin_dash
    if user_signed_in? && current_user.admin?
    else
      flash[:message] = "Unauthorized access"
      redirect_to "/"
    end
  end
end
