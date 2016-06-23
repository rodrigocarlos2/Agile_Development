class DutyNurse < ActiveRecord::Base
  belongs_to :duty
  belongs_to :nurse
end
