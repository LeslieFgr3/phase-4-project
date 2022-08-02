class AddColumn < ActiveRecord::Migration[6.1]
  def change
    add_column :tasks, :startDate, :datetime
    add_column :tasks, :endDate, :datetime
    add_column :tasks, :location, :string
    
  end
end
