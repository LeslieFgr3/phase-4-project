class CreateEmojis < ActiveRecord::Migration[6.1]
  def change
    create_table :emojis do |t|

      t.timestamps
    end
  end
end
