module Taggable
	extend ActiveSupport::Concern

	included do
		p '-'*30
		puts 'this is concern code!'
		p '-'*30
	end
end