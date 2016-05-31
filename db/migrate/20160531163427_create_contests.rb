class CreateContests < ActiveRecord::Migration
  def change
    create_table :contests do |t|
      t.string :name
      t.datetime :start
      t.datetime :end
      t.string :description

      t.timestamps null: false
    end
  end
end
