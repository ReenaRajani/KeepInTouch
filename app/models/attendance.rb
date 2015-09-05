# == Schema Information
#
# Table name: attendances
#
#  id              :integer          not null, primary key
#  employee_id     :integer
#  event_id        :integer
#  attendance_type :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Attendance < ActiveRecord::Base
   
end
