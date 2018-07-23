class Image < ApplicationRecord
    mount_uploader :picture, PictureUploader

    belongs_to :article

    def next
        next_image = article.images.where("id > ?", id).first
        if next_image.nil?
            return article.images.first
        else
            return next_image
        end  
    end
end
