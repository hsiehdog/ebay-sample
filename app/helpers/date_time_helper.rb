module DateTimeHelper
  DEFAULT_TIMEZONE = 'Eastern Time (US & Canada)'
  
  def str_to_datetime(str)
    zone = ActiveSupport::TimeZone.new(DEFAULT_TIMEZONE)
    l str.in_time_zone(zone).to_datetime
  end
end
