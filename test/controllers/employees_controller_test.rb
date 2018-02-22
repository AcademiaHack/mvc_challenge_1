require 'test_helper'

class EmployeesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employee = employees(:one)
  end

  test "should get index" do
    get employees_url
    assert_response :success
  end

  test "should get new" do
    get new_employee_url
    assert_response :success
  end

  test "should create employee" do
    assert_difference('Employee.count') do
      post employees_url, params: { employee: { account_number: @employee.account_number, bank: @employee.bank, email_personal: @employee.email_personal, first_name: @employee.first_name, identity: @employee.identity, last_name: @employee.last_name, middle_name: @employee.middle_name, phone_emergency: @employee.phone_emergency, phone_home: @employee.phone_home, phone_mobile: @employee.phone_mobile } }
    end

    assert_redirected_to employee_url(Employee.last)
  end

  test "should show employee" do
    get employee_url(@employee)
    assert_response :success
  end

  test "should get edit" do
    get edit_employee_url(@employee)
    assert_response :success
  end

  test "should update employee" do
    patch employee_url(@employee), params: { employee: { account_number: @employee.account_number, bank: @employee.bank, email_personal: @employee.email_personal, first_name: @employee.first_name, identity: @employee.identity, last_name: @employee.last_name, middle_name: @employee.middle_name, phone_emergency: @employee.phone_emergency, phone_home: @employee.phone_home, phone_mobile: @employee.phone_mobile } }
    assert_redirected_to employee_url(@employee)
  end

  test "should destroy employee" do
    assert_difference('Employee.count', -1) do
      delete employee_url(@employee)
    end

    assert_redirected_to employees_url
  end
end
