class WorkDay < ActiveRecord::Base
  attr_accessible :minutes
  belongs_to :project
end
