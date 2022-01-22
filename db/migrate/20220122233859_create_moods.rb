class CreateMoods < ActiveRecord::Migration[6.1]
  def change
    create_table :moods do |t|
      t.string :description
      t.datetime :datetime

      t.timestamps
    end
  end
end
