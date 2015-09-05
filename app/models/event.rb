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

class Event < ActiveRecord::Base
  belongs_to :employee
  validates :eventname, :eventdate, :eventstarttime,:eventendtime, :description, :address, presence: true

end
