class Employee < ApplicationRecord
  belongs_to :department
  
  def full_name
    "#{first_name} #{last_name}"
  end

  def self.search(search)
    wildcard_search = "%#{search}%"
  
    where("first_name LIKE ? OR middle_name LIKE ? OR last_name LIKE ? OR identity LIKE ?", wildcard_search, wildcard_search, wildcard_search, wildcard_search)
  end

  def self.search_by_company(search, company)
    employees = self.search(search)
    employees.select do |employee|
      employee.department.company == company
    end
  end
end
