require "sinatra"
require "sinatra/reloader" if development?
require "pry-byebug"

require_relative "cookbook"
require_relative "recipe"

# Index goes in here
get "/" do
  # List all recipes here
end

# Create a new recipe here
get "/new" do
  # Create recipe here
end

# Destroy a recipe
get "/delete" do
  # Destroy recipe here
end
