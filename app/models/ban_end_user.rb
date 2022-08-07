class BanEndUser < ApplicationRecord
  belongs_to :end_user
  belongs_to :material
end
