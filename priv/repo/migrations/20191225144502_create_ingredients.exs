defmodule Foodie.Repo.Migrations.CreateIngredients do
  use Ecto.Migration

  def change do
    create table(:ingredients) do
      add :unit, :string
      add :amount, :float
      add :name, :string
      add :recipe_id, references(:recipes, on_delete: :delete_all)

      timestamps()
    end

    create index(:ingredients, [:recipe_id])
  end
end
