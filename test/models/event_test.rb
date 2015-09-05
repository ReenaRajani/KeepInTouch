# == Schema Information
#
# Table name: events
#
#  id             :integer          not null, primary key
#  eventname      :string
#  eventdate      :date
#  eventstarttime :time
#  eventendtime   :time
#  description    :string
#  address        :string
#  additionalinfo :string
#  invite         :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  employee_id    :integer
#

require 'test_helper'

class EventTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
