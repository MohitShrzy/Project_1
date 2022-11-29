class Student < ApplicationRecord
    validates :student_id , :name, :phone, presence: true
    validates :age,numericality: { only_integer: true }
    validates :email, format: { with: /\A[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]\z/}
end
