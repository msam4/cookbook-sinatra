require "csv"
require_relative "recipe"

class Cookbook
  def initialize(csv_file)
    @recipes = []
    @csv_file = csv_file
    load_csv
  end

  def add(recipe)
  end

  def all
  end

  def destroy(index)
  end

  private

  def load_csv
  end

  def save_csv
  end
end
