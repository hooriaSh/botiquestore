# == Schema Information
#
# Table name: items
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

class Item < ApplicationRecord
end
