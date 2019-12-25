defmodule Foodie.Recipes.Recipe do
  use Ecto.Schema
  import Ecto.Changeset

  schema "recipes" do
    field :instructions, :string
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(recipe, attrs) do
    recipe
    |> cast(attrs, [:title, :instructions])
    |> validate_required([:title, :instructions])
  end
end
