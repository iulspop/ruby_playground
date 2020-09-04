def format_date(date)
  if /([\-\/])\d\d\1/.match?(date)
    date.gsub!(/[\-\/]/, ".")
    date_parts = date.scan(/(\d\d\d\d)(\.)(\d\d)(\.)(\d\d)/)[0]
    date_parts.reverse.join
  else date end
end

p format_date('2016-06-17') # -> '17.06.2016'
p format_date('2017/05/03') # -> '03.05.2017'
p format_date('2015/01-31') # -> '2015/01-31' (no change)
