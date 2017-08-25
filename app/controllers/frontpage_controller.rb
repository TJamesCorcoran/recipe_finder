require "open-uri"

class FrontpageController < ApplicationController
  def index
    query = params["search"]

    @recipes = []
    [1,2].each do |page|
      url = "http://www.recipepuppy.com/api?q=#{query}&p=#{page}"
      data = JSON.parse(open(url).read)
      recipes = data["results"]
      puts "XXX-1 #{recipes.size}"
      raise "unexpected quantity of results" if recipes.size > 10
      @recipes  += recipes
    end
    @recipes = @recipes[0,20]
    puts "XXX-2 #{@recipes.size}"
  end
end
