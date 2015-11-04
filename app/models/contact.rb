class Contact < ActiveRecord::Base
	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, 
        default_url: "/images/:style/missing.png"
    validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

    belongs_to :user

	def full_name 
		"#{first_name} #{last_name}"
	end

	def full_address
		"#{address}, #{city}, #{state}, #{zip}"
	end 

end
