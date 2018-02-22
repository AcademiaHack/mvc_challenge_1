class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :identity
      t.string :account_type
      t.string :account_number
      t.string :bank
      t.string :phone_home
      t.string :phone_mobile
      t.string :phone_emergency
      t.string :email_personal
      t.references :department, foreign_key: true

      t.timestamps
    end
  end
end
