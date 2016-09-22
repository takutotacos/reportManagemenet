class LoginController < ApplicationController
  def init
  end

  def login
    user = User.find_by_username params[:name]
    username = params[:name]
    password = params[:password]
    if user && user.authenticate(params[:password])
      puts 'OK'
    else
      puts 'NG'
    end
  end
end
