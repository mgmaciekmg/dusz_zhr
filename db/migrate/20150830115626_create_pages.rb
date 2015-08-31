class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.integer :page_id
      t.string :name
      t.string :desc
      t.boolean :active

      t.timestamps null: false
    end
  end
end
