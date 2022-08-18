class EndUser < ApplicationRecord
  has_many :ban_end_users, dependent: :destroy
  has_many :materials, through: :ban_end_users
  has_many :recipes, dependent: :destroy

    enum name: {sb: 0, md: 1, seven: 2}
end
