class Register < ActiveRecord::Base
	has_many :aplicators
	has_many :patients
	has_many :vaccines
end
