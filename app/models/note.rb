class Note < ApplicationRecord
    mount_uploader :image, ImageUploader
    belongs_to :user
    has_many :likes, dependent: :destroy
    has_many :liked_users, through: :likes, source: :user
    # extend ActiveHash::Associations::ActiveRecordExtensions
    # belongs_to :graphic
    # belongs_to :typography
    # belongs_to :ui
end
