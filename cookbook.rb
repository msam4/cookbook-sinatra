require "csv"
require_relative "recipe"

class Cookbook
  def initialize(csv_file)
    @recipes = []
    @csv_file = csv_file
    load_csv
  end

  def add(recipe)
    @recipes << recipe
    save_csv
  end

  def all
    @recipes
  end

  # Used the select method instead
  def grab(index)
    @recipes[index]
  end

  def update(index, name, description)
    @recipes[index].name = name
    @recipes[index].description = description
    save_csv
  end

  def destroy(index)
    @recipes.delete_at(index)
    save_csv
  end

  private

  def load_csv
    CSV.foreach(@csv_file) do |row|
      @recipes << Recipe.new(row[0], row[1])
    end
  end

  def save_csv
    CSV.open(@csv_file, 'wb') do |csv|
      @recipes.each do |recipe|
        csv << [recipe.name, recipe.description]
      end
    end
  end
end
