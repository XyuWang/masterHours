class Project < ActiveRecord::Base
  belongs_to :user
  has_many :work_days

  validates :name, presence: true

  def total_minutes
    work_days.sum(:minutes)
  end

  def total_hours
    total_minutes/60.0
  end

  def total_score
    (multiply * total_minutes).to_i
  end

  def all_data
    data = []
    begin_time = work_days.first.time
    end_day = Timw.now

    day = nil
    while begin_time < end_day
      work_days.each do | i |
        if i.time.year == begin_time.year && i.time.month == begin_time.month && i.time.day == begin_time.day
          day = i
          break;
      end
      end

      data << {date: begin_time.to_date.to_s, score: 0, hours: day ? day.minutes/60.0:0}
      begin_time = begin_time + 1.day
    end
    data
  end
end
