class AddIndexToSubpages < ActiveRecord::Migration
  def change
  end
  add_index :subpages, :page_id
end
