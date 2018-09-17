class CreateManagers < ActiveRecord::Migration[5.2]
  def change
    create_table :managers do |t|
      t.string :name
      t.string :string
      t.string :salary
      t.string :float

      t.timestamps
    end
  end
end
