class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  #Enregistre l'utilisateur connecté dans une variable
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  #Permet de controller si l'utilisateur est connecté
  #Avant d'acceder à une fonctionnalité
  def authorize
    redirect_to '/login' unless current_user
  end
end
