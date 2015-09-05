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

class Employee < ActiveRecord::Base
  attr_accessor :remember_token
   before_save { self.emp_email = emp_email.downcase }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :emp_email ,:presence => true, :uniqueness => true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }

  has_many :events


end
