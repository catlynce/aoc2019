file = File.open("input.txt")
data = file.readlines.map(&:chomp)
total = 0
$BIGTOTAL = 0

def calculation(value)
    i = (value / 3).floor - 2
    if i.positive?
      $BIGTOTAL += i
      calculation(i)
    else
      return 0
    end
end

data.each do |line|
    total += (line.to_i / 3).floor - 2
end

data.each do |line|
    calculation(line.to_i)
end

p total
p $BIGTOTAL
