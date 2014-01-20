class AddDownloadableToResources < ActiveRecord::Migration
  def change
    add_reference :resources, :downloadable, polymorphic: true, index: true
  end
end
