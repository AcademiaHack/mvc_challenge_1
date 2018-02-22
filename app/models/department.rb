class Department < ApplicationRecord
  belongs_to :company
  has_many :department_employees
  has_many :employees, through: :department_employees
end
