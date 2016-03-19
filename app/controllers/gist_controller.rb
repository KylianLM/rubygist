class GistController < ApplicationController
  require 'net/http'
  before_filter :authorize

  #Homepage une fois connecté
  def home
    @gists = User.find(current_user.id).gist
    @categories = Category.all
  end

  #Page avec filtre de category
  def category
    @categories = Category.all
    @gists = Gist.where('user_id = ? AND category_id = ?', current_user.id, params[:category])
    render :template => "gist/home.html.erb"
  end

  #Page d'ajout de gist
  def index
    @categories = Category.all
  end

  #Action pour save un gist
  def create
    Gist.create id_gist: params[:id_gist],
                url: "https://gist.github.com/" + params[:id_gist],
                name: params[:name],
                category_id: params[:category],
                user_id: current_user.id
    redirect_to "/gist"
  end
end
