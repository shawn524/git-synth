class CreateGitsongs < ActiveRecord::Migration
  def change
    create_table :gitsongs do |t|
      t.string :repo
      t.text :data
      t.string :share_url

      t.timestamps null: false
    end
  end
end
