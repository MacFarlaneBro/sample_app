class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  validates :body, :user_id, :post_id, presence: true

  def set_user!(user)
    self.user_id = user.id
  self.save!
  end
end
