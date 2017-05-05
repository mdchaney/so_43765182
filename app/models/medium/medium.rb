class Medium::Medium < ApplicationRecord
  belongs_to :company, optional: true, inverse_of: :media
  has_many :permissions, class_name: 'Permission', as: :permitable, inverse_of: :permitable
  has_many :users, through: :permissions
end
