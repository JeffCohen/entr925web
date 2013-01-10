module ApplicationHelper

  def homework_url(week)
    "http://github.com/cspp52553/week#{week}".html_safe
  end

  def piazza_url
    "https://piazza.com/uchicago/winter2013/cspp52553/home".html_safe
  end

  def syllabus_path
    "/syllabus.pdf".html_safe
  end

end
