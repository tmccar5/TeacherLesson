class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :date
      t.text :exercise

      t.timestamps null: false
    end
  end
end
