class Dj < ActiveRecord::Base
	validates_presence_of :name, :crew
end
