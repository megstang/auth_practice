class UsersController <ApplicationController
  def new
    @user = User.new
  end
  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:email] = "You signed up successfully"
      flash[:password]= "valid"
    else
      flash[:email] = "Form is invalid"
      flash[:password]= "invalid"
    end
    render "new"
  end

end
