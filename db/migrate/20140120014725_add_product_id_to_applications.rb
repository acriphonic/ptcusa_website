class AddProductIdToApplications < ActiveRecord::Migration
  def change
    add_column :applications, :product_id, :integer
  end
end
