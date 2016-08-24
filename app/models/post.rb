class Post < ActiveRecord::Base
	has_many :comments

	has_attached_file :image, styles: { medium: "300x300#", }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  def self.search(search)

	where("title LIKE ?","%#{search}%")
end

end
