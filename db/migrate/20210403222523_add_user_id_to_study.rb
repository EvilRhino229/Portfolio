class AddUserIdToStudy < ActiveRecord::Migration[6.0]
  def change
    add_column :studies, :user_id, :integer
  end
end
