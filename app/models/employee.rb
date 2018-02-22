class Employee < ApplicationRecord
  def full_name
    "#{first_name} #{last_name}"
  end

  def self.search(search)
    wildcard_search = "%#{search}%"
  
    where("first_name LIKE ? OR middle_name LIKE ? OR last_name LIKE ? OR identity LIKE ?", wildcard_search, wildcard_search, wildcard_search, wildcard_search)
  end
end
