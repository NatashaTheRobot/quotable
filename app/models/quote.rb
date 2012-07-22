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

class Quote < ActiveRecord::Base
  attr_accessible :author, :text
  validates_presence_of :text
  belongs_to :user
  has_many :tags, dependent: :destroy
  has_many :likes, dependent: :destroy
end


