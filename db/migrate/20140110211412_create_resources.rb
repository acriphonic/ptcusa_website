class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :name
      t.string :version
      t.string :filepath

      t.timestamps
    end
  end
end
