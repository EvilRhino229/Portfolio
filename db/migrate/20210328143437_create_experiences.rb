class CreateExperiences < ActiveRecord::Migration[6.0]
  def change
    create_table :experiences do |t|
      t.text :name
      t.text :description
      t.integer :years

      t.timestamps
    end
  end
end
