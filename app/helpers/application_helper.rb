module ApplicationHelper
  def format_datetime(datetime)
    format = '%Y/%m/%d'

    datetime.strftime(format)
  end
end
