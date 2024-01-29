class Favorite < ApplicationRecord

  belongs_to :user
  belongs_to :post_image
  #FavoriteモデルにUserモデルとPostImageモデルを関連付けるため上記の記述

  validates :user_id, uniqueness: {scope: :post_image_id}

end
