require 'json'
require 'open-uri'

class GamesController < ApplicationController
  def new
    @letters = ('A'..'Z').to_a.sample(10)
    @a = @letters[0]
    @b = @letters[1]
    @c = @letters[2]
    @d = @letters[3]
    @e = @letters[4]
    @f = @letters[5]
    @g = @letters[6]
    @h = @letters[7]
    @i = @letters[8]
    @j = @letters[9]
  end

  def score
  @url = "https://wagon-dictionary.herokuapp.com/#{params[:word]}"
  @user_serialized = open(@url).read
  @user = JSON.parse(@user_serialized)

  if @user["found"] == false
    @user = "cant find it"
  elsif @user["found"] == true
    @user = "well done your word is valid"
  end

  end
end


