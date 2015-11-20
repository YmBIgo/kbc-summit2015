class CreateSpeakers < ActiveRecord::Migration
  def change
    create_table :speakers do |t|

      t.string      :name
      t.string      :job
      t.text        :carrier
      t.text        :introduce
      t.text        :message

      t.timestamps null: false
    end
  end
end
