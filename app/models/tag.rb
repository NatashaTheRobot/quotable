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
  belongs_to :quote
end

