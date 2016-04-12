class CreateKittens < ActiveRecord::Migration
  def change
    create_table :kittens do |t|
      t.string :name
      t.integer :age
      t.integer :cuteness
      t.integer :softeness

      t.timestamps null: false
    end
  end
end
