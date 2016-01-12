class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.string     :dinner_name, :null => false
      t.integer    :start_month, :null => false, :default => 1
      t.integer    :start_day  , :null => false
      t.integer    :start_time , :null => false
      t.text       :detail
      t.timestamps null: false
    end
  end
end
