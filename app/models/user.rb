class User < ActiveRecord::Base
  has_many :gist
  has_secure_password
end
