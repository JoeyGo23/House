class CreateMixes < ActiveRecord::Migration
  def change
    create_table :mixes do |t|
      t.string :name
      t.string :url
      t.string :last_modified_string
      t.string :size
      t.string :event
      t.integer :dj_id
    end
  end
end
