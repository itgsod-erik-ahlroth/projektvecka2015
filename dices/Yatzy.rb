require 'colorize'
$dice = Hash.new
$board = Hash.new

def dice(x,z)
  (1..x).each do |y|
    $dice["tal#{y}"] = rand(1..(z+1))
  end
  ant = 1
  print "\033[1B"
  x.times do
    if $dice["tal#{ant}"] <= z/2
      print "#{$dice["tal#{ant}"]}, ".colorize(:blue).blink
    else
      print "#{$dice["tal#{ant}"]}, ".colorize(:red).blink
    end
    ant += 1
  end
  print "\b" *2
  print " "
  print "\033[1B"
end


def omg(x)

end


def gör(a,b,c,d,e)


  x = 1
  6.times do
    if a == x and b == x and c == x and d == x and e == x

    end
    x += 1
  end


end

dice(5,6)
omg(1)
gör($dice["tal1"],$dice["tal2"],$dice["tal3"],$dice["tal4"],$dice["tal5"])
