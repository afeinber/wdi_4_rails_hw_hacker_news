class Comment < ActiveRecord::Base
  belongs_to :user, dependent: :destroy
  belongs_to :article, dependent: :destroy
  validates! :user, :article, presence: true
  validates :content, presence: true
end
