module Taggable
	extend ActiveSupport::Concern

	included do
		puts 'this is taggable!'
	end
end