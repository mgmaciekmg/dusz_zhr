class AddSubActiveToSubpages < ActiveRecord::Migration
  def change
    add_column :subpages, :sub_active, :boolean
  end
end
