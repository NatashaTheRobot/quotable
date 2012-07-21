class Quote < ActiveRecord::Base
  attr_accessible :author, :text
  validates_presence_of :text
  belongs_to :user
  has_many :tags
  has_many :likes
end
