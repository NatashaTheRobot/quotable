# == Schema Information
#
# Table name: tags
#
#  id         :integer         not null, primary key
#  text       :string(255)     not null
#  quote_id   :integer
#  created_at :datetime        not null
#  updated_at :datetime        not null
#


class Tag < ActiveRecord::Base
  attr_accessible :text
  validates_presence_of :text
  has_and_belongs_to_many :quotes
  
  def self.tags_array(tags_string)
    string = tags_string.downcase
    tags_array = string.split(',')
    tags_array.collect { |tag| Tag.new(:text => tag.strip)}
  end
  
end

