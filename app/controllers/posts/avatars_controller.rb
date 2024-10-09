class Posts::AvatarsController < ApplicationController
  def index
    # 画像が添付されている投稿に制限するため joins(:avatar_attachment)
    # N+1問題を回避するため with_attached_avatar
    @posts = Post.joins(:avatar_attachment).with_attached_avatar.order(id: :asc)
  end
end
