# == Schema Information
#
# Table name: orders
#
#  id         :bigint(8)        not null, primary key
#  user_id    :integer
#  date       :date
#  comments   :string
#  sub_total  :float
#  tax        :float
#  discount   :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Order < ApplicationRecord

#Associations
	belongs_to :user
	has_many :order_items
end
