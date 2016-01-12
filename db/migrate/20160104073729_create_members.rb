class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string     :name        , :null => false
      t.integer    :plan_id     , :null => false
      t.boolean    :attend_check
      t.timestamps null: false
    end
  end
end
