class Blog < ActiveRecord::Base
  validates :title, presence: true, length: { maximum: 50 }
  validates :text, presence: true, length: { maximum: 1000 }
end
