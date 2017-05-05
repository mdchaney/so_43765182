class Company < ApplicationRecord
  has_many :media, class_name: 'Medium::Medium', inverse_of: :company
end
