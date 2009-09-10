require 'digest/sha1'

class Nada < ActiveRecord::Base
    has_many :votes
    before_save :generate_link_tag

    protected
	# on save, generate a hash of this Nada
	def generate_link_tag
	    self.link_tag = Digest::SHA1.hexdigest("--#{image_url}--#{image_filename}--#{text}--")
	end
end
