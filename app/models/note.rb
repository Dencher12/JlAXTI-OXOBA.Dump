class Note < ApplicationRecord
  has_many :attachments, as: :attachable
  validates :title, presence: true
  accepts_nested_attributes_for :attachments
end
