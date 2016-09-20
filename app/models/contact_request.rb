class ContactRequest < ActiveRecord::Base
  EMAIL_REGEX = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i
  validates :email, :presence => true, :uniqueness => true, format: { with: /\A[^@\s]+@([^@.\s]+\.)+[^@.\s]+\z/ }
  validates :first_name, :last_name, :subject, :message, presence: true
end
