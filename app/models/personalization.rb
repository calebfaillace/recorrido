class Personalization < ActiveRecord::Base
	do_not_validate_attachment_file_type :objeto

	has_attached_file :objeto,
		:storage => :dropbox,
		:dropbox_credentials => Rails.root.join("config/dropbox.yml"),
		:dropbox_options => {environment: ENV["RACK_ENV"]}
end
