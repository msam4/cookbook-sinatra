require "sinatra"
require "sinatra/reloader" if development?
require "pry-byebug"

# Index goes in here
get "/" do
  # List all recipes here
end

# Create a new recipe here
get "/new" do
  # Create recipe here
end

# Add a destroy
# get "/destroy" do
#   # Destroy goes here
# end
