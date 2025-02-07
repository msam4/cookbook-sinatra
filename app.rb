require "sinatra"
require "sinatra/reloader" if development?
require "pry-byebug"

require_relative "cookbook"
require_relative "recipe"

# Index goes in here
get "/" do
  cookbook = Cookbook.new(File.join(__dir__, "recipes.csv"))
  @recipes = cookbook.all
  erb :index
end

# Create a new recipe here
get "/new" do
  # Create recipe here
end

# Destroy a recipe
get "/delete" do
  # Destroy recipe here
end
