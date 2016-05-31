class AddUsersToContest < ActiveRecord::Migration
  def change
  	add_column :contests, :user_emails, :string, array: true, default: []
  end
end
