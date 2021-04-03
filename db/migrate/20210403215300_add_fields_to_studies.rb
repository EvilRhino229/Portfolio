class AddFieldsToStudies < ActiveRecord::Migration[6.0]
  def change
    add_column :studies, :acaname, :string
    add_column :studies, :location, :string
    add_column :studies, :focus, :string
    add_column :studies, :degree, :string
    add_column :studies, :startdate, :date
    add_column :studies, :enddate, :date
    add_column :studies, :description, :text
  end
end
