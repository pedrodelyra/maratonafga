class AddQuestToContest < ActiveRecord::Migration
  def change
    add_reference :questions, :contest, index: true, foreign_key: true
  end
end
