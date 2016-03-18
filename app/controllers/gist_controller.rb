class GistController < ApplicationController
  require 'net/http'

  def home
    @gists = Gist.all
    @categories = Category.all
  end

  def category
    @categories = Category.all
    @gists = Category.find(params[:category]).gists
    render :template => "gist/home.html.erb"
  end

  def index
  end

  def create
    Gist.create id_gist: params[:id_gist],
                url: "https://gist.github.com/" + params[:id_gist],
                name: params[:name]
    redirect_to "/gist"
  end

  #Action for testing API Gist
  def test
    uri = URI('https://api.github.com/gists/dcded648c97be05de643')
    @res = JSON.parse Net::HTTP.get(uri)
  end
end
