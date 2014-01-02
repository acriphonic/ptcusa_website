class CreateNewsUpdates < ActiveRecord::Migration
  def change
    create_table :news_updates do |t|
      t.string :title
      t.string :location
      t.date :date
      t.text :update
      t.string :picture

      t.timestamps
    end
  end
end
