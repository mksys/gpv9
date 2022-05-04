Time::DATE_FORMATS[:month_and_year] = "%B %Y"
Time::DATE_FORMATS[:pretty] = lambda { |time| time.strftime("%a, %b %e at %l:%M") + time.strftime("%p").downcase }
Time::DATE_FORMATS[:gp_article] = lambda { |time| time.strftime("%B %e, %Y") }
