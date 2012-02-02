class RealEstate < ActiveRecord::Base
  belongs_to :user
  has_many :medias

  accepts_nested_attributes_for :medias
end
