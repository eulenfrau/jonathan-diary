class Article < ApplicationRecord
    validates :title, presence: true, length: { minimum: 1 }

    has_many :images

    scope :keywords, -> (term) {where("title LIKE ? OR tags LIKE ?", "%#{term}%", "%#{term}%" )}

    
end

