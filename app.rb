require "sinatra"
require "sinatra/reloader"

get("/") do

  erb(:homepage)
end

get("/rock") do
  moves = ["rock", "paper", "sissors"]

  @comp_move = moves.sample
  
  if @comp_move == "rock"
    @outcome = "tied"
  elsif @comp_move == "paper"
    @outcome = "lost"
  else
    @outcome = "won"
  end

  erb(:zebra)
end

get("/paper") do
    moves = ["rock", "paper", "sissors"]

  @comp_move = moves.sample
  
  if @comp_move == "paper"
    @outcome = "tied"
  elsif @comp_move == "rock"
    @outcome = "lost"
  else
    @outcome = "won"
  end

  erb(:giraffe)
end

get("/sissors") do
    moves = ["rock", "paper", "sissors"]

  @comp_move = moves.sample
  
  if @comp_move == "sissors"
    @outcome = "tied"
  elsif @comp_move == "paper"
    @outcome = "won"
  else
    @outcome = "lost"
  end

  erb(:bear)
end
