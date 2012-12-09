class CreatePlacesTable < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name,         :null => false
      t.text   :description
      t.string :address,      :null => false

      t.timestamps
    end
  end
end
