class Note < ApplicationRecord
  has_many :attachments, as: :attachable, dependent: :destroy
  validates :title, presence: true
  accepts_nested_attributes_for :attachments

  default_scope { order(created_at: :desc) } 
end
