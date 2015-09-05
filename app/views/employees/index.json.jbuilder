json.array!(@employees) do |employee|
  json.extract! employee, :id, :emp_name, :emp_type, :emp_email, :password_digest
  json.url employee_url(employee, format: :json)
end
