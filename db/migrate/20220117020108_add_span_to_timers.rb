class AddSpanToTimers < ActiveRecord::Migration[6.1]
  def change
    add_column :timers, :span, :integer
  end
end
