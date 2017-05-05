class User < ApplicationRecord
  has_many :permissions, inverse_of: :user
end
