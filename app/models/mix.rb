class Mix < ActiveRecord::Base
	validates_presence_of :name, :url, :last_modified_string, :size, :event, :dj_id
end
