class Question < ActiveRecord::Base
  attr_accessible :question_category, :question_name, :question_type
  CATEGORIES = %w[JAVA ROR PHP ANDROID]
  TYPES = %w[single_choice multiple_choice descriptive]
  #validates :question_category, :question_name, :question_type, presence: true
end
