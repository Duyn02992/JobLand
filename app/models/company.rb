class Company < ApplicationRecord
  has_many :jobs
  belongs_to :user, optional: true
end
