class CreateCourses < ActiveRecord::Migration[8.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.integer :par
      t.integer :holes
      t.string :location

      t.timestamps
    end
  end
end
