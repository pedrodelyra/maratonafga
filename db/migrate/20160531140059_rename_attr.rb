class RenameAttr < ActiveRecord::Migration
  def change
  	rename_column :questions, :description, :name
  	rename_column :questions, :solution, :author
  	remove_column :questions, :editorial
  end
end
