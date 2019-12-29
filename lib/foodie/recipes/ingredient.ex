defmodule Foodie.Recipes.Ingredient do
  use Ecto.Schema
  import Ecto.Changeset

  schema "ingredients" do
    field :amount, :float
    field :name, :string
    field :unit, :string
    belongs_to :recipe, Foodie.Recipes.Recipe

    timestamps()
  end

  @doc false
  def changeset(ingredient, attrs) do
    ingredient
    |> cast(attrs, [:unit, :amount, :name])
    |> cast_assoc(:recipe)
    |> validate_required([:unit, :amount, :name])
  end
end
