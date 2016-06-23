class Duty < ActiveRecord::Base
  
  belongs_to :day

  has_many :duty_nurses
  has_many :nurses, through: :duty_nurses

end
