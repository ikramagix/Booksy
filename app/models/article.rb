class Article < ApplicationRecord
    belongs_to :user
    has_many :comments, dependent: :destroy
  
    validates :title, presence: true
    validates :content, presence: true
    validates :private, inclusion: { in: [true, false] }
  
    scope :public_articles, -> { where(private: false) }
  end
  