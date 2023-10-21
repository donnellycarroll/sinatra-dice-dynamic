require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

get("/dice/:number_of_dice/:how_many_sides") do
  @num_dice = params.fetch("number_of_dice").to_i
  @num_sides = params.fetch("how_many_sides").to_i
  
  @rolls =[]

  @num_dice.times do
    @rolls.push(rand(1..@num_sides))
  end

erb(:flexible)
end
