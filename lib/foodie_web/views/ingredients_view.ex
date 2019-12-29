defmodule FoodieWeb.IngredientView do
  use FoodieWeb, :view
  alias FoodieWeb.RecipeView


  def render("ingredient.json", %{ingredient: ingredient}) do
    %{amount: ingredient.amount,
      name: ingredient.name,
      unit: ingredient.unit }
  end
end
