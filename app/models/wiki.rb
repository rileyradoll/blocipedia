class Wiki < ActiveRecord::Base
  belongs_to :user

  default_scope { order(created_at: :desc) }

  validates :title, length: { minimum: 2 }, presence: true
  validates :body, length: { minimum: 5 }, presence: true
  validates :user, presence: true
end
