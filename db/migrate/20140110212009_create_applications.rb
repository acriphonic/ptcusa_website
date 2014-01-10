class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.text :description

      t.timestamps
    end
  end
end
