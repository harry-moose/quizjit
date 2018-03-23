class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :question
      t.text :opt1
      t.text :opt2
      t.text :opt3
      t.text :opt4
      t.text :answer

      t.timestamps null: false
    end
  end
end
