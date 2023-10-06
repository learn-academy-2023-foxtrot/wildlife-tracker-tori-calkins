class CreateWildlifeTrackers < ActiveRecord::Migration[7.0]
  def change
    create_table :wildlife_trackers do |t|
      t.string :common_name
      t.string :scientific_binomial

      t.timestamps
    end
  end
end
