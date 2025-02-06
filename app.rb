require "sinatra"
require "sinatra/reloader" if development?
require "pry-byebug"

# Index goes in here
get "/" do
  @usernames = ["ssaunier", "Papillard"]
  erb :index
end

get "/about" do
  erb :about
end

get "/team/:username" do
  puts params[:username]
  "The username is #{params[:username]}"
end

# Add a create
# get "/create" do
#   # Create goes here
# end

# Add a destroy
# get "/destroy" do
#   # Destroy goes here
# end
