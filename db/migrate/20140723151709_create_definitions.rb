class CreateDefinitions < ActiveRecord::Migration
  def change
    create_table :definitions do |t|
      t.string :name
      t.text :def

      t.timestamps
    end
  end
end
