class CreateDepartmentEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :department_employees do |t|
      t.references :department, foreign_key: true
      t.references :employee, foreign_key: true

      t.timestamps
    end
  end
end
