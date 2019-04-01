class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string  :name, null: false
      t.boolean :is_done, default: false, null: false
      t.string  :ancestry, index: true
      
      t.timestamps
    end
  end
end
