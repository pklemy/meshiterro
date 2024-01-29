class PostComment < ApplicationRecord

  belongs_to :user
  belongs_to :post_image

#  def destroy
#   PostComment.find(params[:id]).destroy
#     redirect_to post_image_path(params[:post_images_id])
#  end
end