class Role < ApplicationRecord
  belongs_to :user
  validates :role_name, presence: true

  enum role_name: [:customer, :branch_manager]
end
