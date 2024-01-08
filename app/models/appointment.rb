class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :specialist, class_name: 'User'
end
