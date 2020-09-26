class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :role, dependent: :destroy

  accepts_nested_attributes_for :role

  validates :gender, presence: true

  enum gender: [ :male, :female, :other ]

  def branch_manager?
    role&.branch_manager?
  end

  def customer?
    role&.customer?
  end
end
