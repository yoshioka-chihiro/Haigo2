class Recipe < ApplicationRecord
  belongs_to :end_user
  belongs_to :wholesale
  belongs_to :member
end