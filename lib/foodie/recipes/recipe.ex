defmodule Foodie.Recipes.Recipe do
  use Ecto.Schema
  import Ecto.Changeset

  schema "recipes" do
    field :instructions, :string
    field :title, :string
    has_many :ingredients, Foodie.Recipes.Ingredient
    timestamps()
  end

  @doc false
  def changeset(recipe, attrs) do
    recipe
    |> cast(attrs, [:title, :instructions])
    |> cast_assoc(:ingredients)
    |> validate_required([:title, :instructions])
  end
end
