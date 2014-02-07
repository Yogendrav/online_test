class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
    	t.string :question_category
    	t.string :question_name
    	t.string :question_type
      t.timestamps
    end
  end
end
