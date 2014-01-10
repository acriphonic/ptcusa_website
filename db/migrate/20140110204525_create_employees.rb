class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.string :title
      t.string :email
      t.string :picture
      t.text :bio

      t.timestamps
    end
  end
end
