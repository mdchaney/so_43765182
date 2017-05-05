class Permission < ApplicationRecord
  belongs_to :permitable, polymorphic: true, inverse_of: :permissions
  belongs_to :user, inverse_of: :permissions
end
