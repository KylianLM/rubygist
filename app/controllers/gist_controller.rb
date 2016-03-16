class GistController < ApplicationController
  def home
  end

  def index

  end

  def create
    Gist.create id_gist: params[:id_gist], url: "https://api.github.com/gists/" + params[:id_gist]
    redirect_to "/gist"
  end
end
