class NewCreateUser < ActiveRecord::Migration[5.2]
  def change
    drop_table :cats
    
    create_table :cats do |t|
      t.date :birth_date, null: false
      t.string :color, null: false #Do we need this null?
      t.string :name, null: false
      t.string :sex, null: false, limit: 1
      t.text :description
      
      t.timestamps
    end
    
    add_index :cats, [:birth_date, :name]
    
  end
end
