class FixColumnName < ActiveRecord::Migration
  def change
		rename_column :news_updates, :update, :news	  
	end
end
