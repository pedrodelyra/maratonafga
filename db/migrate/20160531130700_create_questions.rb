class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :description
      t.string :solution
      t.string :editorial

      t.timestamps null: false
    end
  end
end
