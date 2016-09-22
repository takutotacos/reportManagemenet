class User < ApplicationRecord
	has_and_belongs_to_many :groups

	accepts_nested_attributes_for :groups
	has_secure_password
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

	validates :username, presence: true, length: {in: 1..50}
	validates :password, confirmation: true, length: {in: 5..15}, presence: true
	validates :email, presence: true, uniqueness: true, format: {with: VALID_EMAIL_REGEX}
end
