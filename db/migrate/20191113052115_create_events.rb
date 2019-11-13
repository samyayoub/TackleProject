class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.text :name
      t.text :description
      t.datetime :due_date
      t.integer :user_id
      t.integer :project_id
      t.timestamps
    end
  end
end
