class Juicio < ActiveRecord::Base
  EMAIL_REGEXP = /\A[a-z0-9\-_]+(?:\.[a-z0-9\-\._]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\Z/i.freeze

  belongs_to :product

  validates :name, presence: true, with: /[a-zA-Z]/
  validates :email, with: EMAIL_REGEXP
  validates :text, presence: true
end
