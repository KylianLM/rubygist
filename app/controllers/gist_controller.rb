class GistController < ApplicationController
  require 'net/http'
  before_filter :authorize

  def home
    @gists = User.find(current_user.id).gist
    @categories = Category.all
  end

  def category
    @categories = Category.all
    @gists = Gist.where('user_id = ? AND category_id = ?', current_user.id, params[:category])
    render :template => "gist/home.html.erb"
  end

  def index
    @categories = Category.all
  end

  def create
    Gist.create id_gist: params[:id_gist],
                url: "https://gist.github.com/" + params[:id_gist],
                name: params[:name],
                category_id: params[:category],
                user_id: current_user.id
    redirect_to "/gist"
  end

  def test
    uri = URI('https://api.github.com/gists/dcded648c97be05de643')
    @res = JSON.parse Net::HTTP.get(uri)
  end
end
