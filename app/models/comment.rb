class Comment < ActiveRecord::Base
  EMAIL_REGEXP = /\A[a-z0-9\-_]+(?:\.[a-z0-9\-\._]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\Z/i.freeze
  belongs_to :product

  validates :name, presence: true, format: /[a-zA-Z]+/
  validates :email, format: EMAIL_REGEXP
  validates :content, presence: true
end
