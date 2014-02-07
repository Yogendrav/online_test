ActiveAdmin.register Question do

  index do
    column :question_category
    column :question_name
    column :question_type
    default_actions
  end
  form do |f|                         
    f.inputs "Question form" do
      f.inputs do
        f.collection_select :question_category, Question::CATEGORIES, :to_s, :humanize
      end
      f.inputs do
        f.input :question_name
      end
      f.inputs do
        f.collection_select :question_type, Question::TYPES, :to_s, :humanize
      end
    end                           
    f.actions                         
  end  
end
