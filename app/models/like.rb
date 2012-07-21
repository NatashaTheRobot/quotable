class Like < ActiveRecord::Base
  # attr_accessible 
  belongs_to :user
  belongs_to :quote
end
