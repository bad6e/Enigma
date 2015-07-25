class Date
#This class provides the correctly formated date

  def current_date
    current_date = Time.new()
    formatted_date = current_date.strftime("%d%m%y")
  end
end
