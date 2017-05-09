class CreateListOfWaterfalls < ActiveRecord::Migration
  def change
    create_table :list_of_waterfalls do |t|
      t.string :name
      t.string :height
      t.string :locality
      t.string :country
      t.string :description

      t.timestamps
    end
  end
end
