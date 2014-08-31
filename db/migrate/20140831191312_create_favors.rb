class CreateFavors < ActiveRecord::Migration
  def change
    create_table :favors do |t|
      t.string :address
      t.float :latitude
      t.float :longitude
      t.string :title
      t.string :description
      t.references :user, index: true

      t.timestamps
    end
  end
end
