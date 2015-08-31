class CreateSubpages < ActiveRecord::Migration
  def change
    create_table :subpages do |t|
      t.integer :page_id
      t.string :name
      t.string :sub_desc

      t.timestamps null: false
    end
  end
end
