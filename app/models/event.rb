class Event < ActiveRecord::Base
  belongs_to :user
  has_many :galleries
  accepts_nested_attributes_for :galleries
  mount_uploader :image,  ImageUploader
end
