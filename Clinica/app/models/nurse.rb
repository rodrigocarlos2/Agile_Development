class Nurse < ActiveRecord::Base

	has_many :duty_nurses
    has_many :duties, through: :duty_nurses

end
