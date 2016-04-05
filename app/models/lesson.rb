class Lesson < ActiveRecord::Base
	belongs_to :user
	
	has_attached_file :chart, styles: { medium: "300x300>", thumb: "100x100>" },  default_url: "/images/:style/missing.png"
	validates_attachment_content_type :chart, content_type: ['image/jpeg', 'image/png', 'image/gif', 'application/pdf']

	has_many :comments, as: :commentable
end
