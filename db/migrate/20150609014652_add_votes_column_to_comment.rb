class AddVotesColumnToComment < ActiveRecord::Migration
  def change
    add_column :comments, :votes, :integer
  end
end
