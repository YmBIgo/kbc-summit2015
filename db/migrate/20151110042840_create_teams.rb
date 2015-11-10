class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|

      t.string          :name
      t.text            :text
      t.string          :link_url
      t.string          :leader

      t.timestamps null: false
    end
  end
end
