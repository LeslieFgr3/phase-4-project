class CreateSchedulers < ActiveRecord::Migration[6.1]
  def change
    create_table :schedulers do |t|
      t.integer :task_id
      t.integer :user_id

      t.timestamps
    end
  end
end
