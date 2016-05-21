class Patient < ActiveRecord::Base
	has_many :vaccines
	has_many :aplicators
end
