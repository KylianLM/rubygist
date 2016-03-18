class Category < ActiveRecord::Base
  has_many :gist
end