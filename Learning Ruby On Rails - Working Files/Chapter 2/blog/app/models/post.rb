class Post < ActiveRecord::Base
	validates :title, presence: true
	validates :excerpt, presence: true
	validates :content, presence: true
	validates_presence_of :categories

	scope :current, -> { where("created_at >= '#{Time.now}'") }

	belongs_to :user
	has_many :terms
	
	has_many :categories, :through => :terms
	
	has_many :comments

	def to_s
		title
	end
end
