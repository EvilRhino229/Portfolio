class AddExperienceFields < ActiveRecord::Migration[6.0]
  def change
      add_column :experiences, :expname, :text
      add_column :experiences, :title, :text
      add_column :experiences, :description, :text
      add_column :experiences, :years, :integer
  end
end
