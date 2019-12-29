defmodule FoodieWeb.RecipeView do
  use FoodieWeb, :view
  alias FoodieWeb.RecipeView
  alias FoodieWeb.IngredientView

  def render("index.json", %{recipes: recipes}) do
    %{data: render_many(recipes, RecipeView, "recipe.json")}
  end

  def render("show.json", %{recipe: recipe}) do
    %{data: render_one(recipe, RecipeView, "recipe.json")}
  end

  def render("recipe.json", %{recipe: recipe}) do
    %{id: recipe.id,
      title: recipe.title,
      instructions: recipe.instructions,
      ingredients: render_many(recipe.ingredients, IngredientView, "ingredient.json")}
  end
end
