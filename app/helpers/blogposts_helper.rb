module BlogpostsHelper
  def blogpost_date(date)
    date.strftime("%B %d, %Y")
  end
end
