class CookiesController < ApplicationController
  def set
    session[:current_user] = {
      '10': {
        name: 'CookieJammer',
        client_id: '784325gqwhwq343242'
      }
    }

    cookies[:session_id] = '10'
    redirect_to cookies_show_path
  end

  def show
    return unless cookies[:session_id]

    current_user = session[:current_user][cookies[:session_id]]
    @user_alias = current_user[:name.to_s]
    @client_id = current_user[:client_id.to_s]
  end

  def delete
    cookies.delete :session_id

    redirect_to cookies_show_path
  end
end
