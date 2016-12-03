class RecorridoVirtual < ActiveRecord::Base
	belongs_to :proyecto
	

	do_not_validate_attachment_file_type :recorrido

	has_attached_file :recorrido,
		:storage => :dropbox,
		:dropbox_credentials => Rails.root.join("config/dropbox.yml"),
		:dropbox_options => {environment: ENV["RACK_ENV"]}
end
