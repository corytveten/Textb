class Course < ApplicationRecord
    belongs_to :school
    has_many :course_textbooks
    has_many :textbooks, through: :course_textbooks
end
