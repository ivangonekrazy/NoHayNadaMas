require 'digest/sha1'

class Nada < ActiveRecord::Base
    before_save :generate_link_tag

    protected
	def generate_link_tag
	    self.link_tag = Digest::SHA1.hexdigest("--#{image_url}--#{image_filename}--#{text}--").slice(0..8)
	end
end
