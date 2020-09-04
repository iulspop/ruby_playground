def format_date(orginal_date)
  date_regex = /(?<year>\d\d\d\d)(?<seperator>[\-\/])(?<month>\d\d)\k<seperator>(?<day>\d\d)/
  orginal_date.sub(date_regex, '\k<day>.\k<month>.\k<year>')
end

p format_date('2016-06-17') # -> '17.06.2016'
p format_date('2017/05/03') # -> '03.05.2017'
p format_date('2015/01-31') # -> '2015/01-31' (no change)