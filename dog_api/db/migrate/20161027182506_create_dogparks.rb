class CreateDogparks < ActiveRecord::Migration[5.0]
  def change
    create_table :dogparks do |t|
      t.string :location

      t.timestamps
    end
  end
end
