class GistController < ApplicationController
  require 'net/http'
  def home
  end

  def index

  end

  def create
    Gist.create id_gist: params[:id_gist], url: "https://api.github.com/gists/" + params[:id_gist]
    redirect_to "/gist"
  end

  def test
    uri = URI('https://api.github.com/gists/47601c9bd553750e0dce')
    res = Net::HTTP.get(uri)
    puts res
  end
end
