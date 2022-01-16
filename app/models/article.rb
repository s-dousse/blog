class Article < ApplicationRecord
  has_many :comments

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 } 

  VALIDATES_STATUSES = ['public', 'private', 'archived']

  validates :status, inclusion: { in: VALIDATES_STATUSES }

  def archived
    status == 'archived'
  end
end
