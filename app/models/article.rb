class Article < ApplicationRecord
  include Visible

  has_many :comments, dependent: :destroy # dependent option : delete an article abd its associated comments

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 } 
end
