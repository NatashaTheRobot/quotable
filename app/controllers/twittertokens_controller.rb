class TwittertokensController < ApplicationController
  
  def prepare_access_token(oauth_token, oauth_token_secret)
  consumer = OAuth::Consumer.new("KEY", "SECRET",
      {
          :site => "http://api.twitter.com"
      })
      # now create the access token object from passed values
      token_hash =
      {
        :auth_token => oauth_token,
        :auth_secret => oauth_token_secret
      }
      access_token = OAuth::AccessToken.from_hash(consumer, token_hash)
      return access_token
  end  
  
end
