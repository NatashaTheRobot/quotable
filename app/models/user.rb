class User < ActiveRecord::Base
  attr_accessible :provider, :twitter_name, :uid, :name, :image, :auth_token, :auth_secret
  
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
