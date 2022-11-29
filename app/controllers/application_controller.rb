class ApplicationController < ActionController::Base
    before_action :admin_loggedin?
def admin_loggedin?
      if session[:admin].nil?
        flash[:notice]="Login as an admin to continue"
        redirect_to home_login_url
      end
    end
end
