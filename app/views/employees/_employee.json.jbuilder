json.extract! employee, :id, :first_name, :middle_name, :last_name, :identity, :account_number, :bank, :phone_home, :phone_mobile, :phone_emergency, :email_personal, :created_at, :updated_at
json.url employee_url(employee, format: :json)
