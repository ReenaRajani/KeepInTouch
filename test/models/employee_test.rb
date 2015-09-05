# == Schema Information
#
# Table name: employees
#
#  id         :integer          not null, primary key
#  emp_name   :string
#  emp_type   :string
#  emp_email  :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class EmployeeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
