# == Schema Information
#
# Table name: users
#
#  id                   :bigint(8)        not null, primary key
#  first_name           :string
#  last_name            :string
#  email                :string
#  phone                :string
#  password             :string
#  authentication_token :string
#  dob                  :date
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

class User < ApplicationRecord

	#Associations
	has_many :orders
end
