def wave(str)
  wave = []
  for i in 0...str.length do
    next if str[i] == " "
    str[i] = str[i].upcase
    wave.push str
    str = str.downcase
  end
  wave
end