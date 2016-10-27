class CreateVisits < ActiveRecord::Migration[5.0]
  def change
    create_table :visits do |t|
      t.belongs_to :owner, foreign_key: true
      t.belongs_to :dog, foreign_key: true
      t.belongs_to :dogpark, foreign_key: true

      t.timestamps
    end
  end
end
