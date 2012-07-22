class User < ActiveRecord::Base
  attr_accessible :provider, :twitter_name, :uid, :name, :image, :auth_token, :auth_secret
  has_many :quotes
  has_many :likes
  
  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["name"]
      user.twitter_name = auth["info"]["nickname"]
      user.image = auth["info"]["image"]
      user.auth_token = auth["credentials"]["token"]
      user.auth_secret = auth["credentials"]["secret"]
    end
  end
end
# == Schema Information
#
# Table name: users
#
#  id           :integer         not null, primary key
#  provider     :string(255)
#  uid          :string(255)
#  twitter_name :string(255)
#  name         :string(255)
#  auth_token   :string(255)
#  auth_secret  :string(255)
#  image        :string(255)
#  created_at   :datetime        not null
#  updated_at   :datetime        not null
#

