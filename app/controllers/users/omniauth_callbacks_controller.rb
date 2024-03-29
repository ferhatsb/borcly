class Users::OmniauthCallbacksController < ApplicationController

  def facebook
    @user = User.find_for_facebook_oauth(request.env["omniauth.auth"], current_user)

    if @user.persisted?
      flash[:notice] = I18n.t "devise.omniauth_callbacks.success", :kind => "Facebook"
      sign_in_and_redirect @user, :event => :authentication
    else
      session["devise.facebook_data"] = request.env["omniauth.auth"]
      redirect_to new_user_registration_url
    end
  end

  def twitter

    @user = User.find_for_twitter_oauth(request.env['omniauth.auth'], current_user)

    if @user.persisted?
      flash[:notice] = I18n.t 'devise.omniauth_callbacks.success', :kind => 'Twitter'
      sign_in_and_redirect @user, :event => :authentication
    else
      flash[:notice] = I18n.t 'devise.omniauth_callbacks.failure', :kind => 'Twitter', :reason => 'User not found'
      redirect_to new_user_session_path
    end
  end


  def passthru
    render :file => "#{Rails.root}/public/404.html", :status => 404, :layout => false
    # Or alternatively,
    # raise ActionController::RoutingError.new('Not Found')
  end

  def failure
    render :file => "#{Rails.root}/public/404.html", :status => 404, :layout => false
  end


end
