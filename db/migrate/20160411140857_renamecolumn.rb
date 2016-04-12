class Renamecolumn < ActiveRecord::Migration
  def change
    rename_column :kittens, :softeness, :softness
  end
end
