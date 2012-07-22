class Quote < ActiveRecord::Base
  attr_accessible :author, :text
  validates_presence_of :text
  belongs_to :user
  has_many :tags
  has_many :likes
end
# == Schema Information
#
# Table name: quotes
#
#  id         :integer         not null, primary key
#  text       :text            not null
#  author     :string(255)
#  user_id    :integer
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

