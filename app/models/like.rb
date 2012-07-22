class Like < ActiveRecord::Base
  attr_accessible :user_id
  belongs_to :user
  belongs_to :quote
end
# == Schema Information
#
# Table name: likes
#
#  id         :integer         not null, primary key
#  user_id    :integer
#  quote_id   :integer
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

