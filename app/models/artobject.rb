class Artobject < ActiveRecord::Base
	belongs_to :user
	validates :description, length: { maximum: 140 }
	validates :name, presence: true
end
