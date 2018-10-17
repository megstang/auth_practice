class UsersController <ApplicationController
  def destroy
    session[:email]=nil
    session[:password]=nil
    redirect_to root_path
  end
end
