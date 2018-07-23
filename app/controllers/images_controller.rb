class ImagesController < InheritedResources::Base

  private

    def image_params
      params.require(:image).permit(:title, :description, :picture)
    end
end

