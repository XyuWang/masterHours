class WorkDay < ActiveRecord::Base
  default_scope order('time')

  belongs_to :project
  validates :time, presence: true
end
