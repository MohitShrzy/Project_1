class Mark < ApplicationRecord
    validates :student_id ,presence: true
    validates :m1, :m2, :m3, :m4, :m5, numericality: { only_integer: true }
    
end
