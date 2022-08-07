class MaterialGenre < ApplicationRecord
  has_many :materials, dependent: :destroy
end
