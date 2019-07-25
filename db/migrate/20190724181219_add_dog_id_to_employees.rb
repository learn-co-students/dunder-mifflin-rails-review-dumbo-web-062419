class AddDogIdToEmployees < ActiveRecord::Migration[5.1]
  def change
    add_column :employees, :dog_id, :integer
    add_index  :employees, :dog_id
  end
end
