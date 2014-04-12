class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :feeds, :type, :style
  end
end
