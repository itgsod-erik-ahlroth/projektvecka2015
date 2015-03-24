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
  print "\b" *2 ;print " " ;print "\033[1B"
end


def omg(x)

end


def gör(a,b,c,d,e)
  x = 1
  6.times do
    if $dice["tal1"] == x and $dice["tal2"] == x and $dice["tal3"] == x and $dice["tal4"] == x and $dice["tal5"] == x
      #5 lika
    end
    ant = 1 ;ant1 = 2 ;ant2 = 3 ;ant3 = 4; loo = 1
    5.times do
      if $dice["tal#{ant}"] == x and $dice["tal#{ant1}"] == x and $dice["tal#{ant2}"] == x and $dice["tal#{ant3}"] == x
        #4 lika
      end
      if loo == 1
      ant = 1;ant1 = 2; ant2 = 3; ant3 =5
      elsif loo == 2
      ant = 1;ant1 = 2; ant2 = 4; ant3 =5
      elsif loo == 3
      ant = 1;ant1 = 3; ant2 = 4; ant3 =5
      elsif loo == 4
      ant = 2;ant1 = 3; ant2 = 4; ant3 =5
      end
      loo += 1
    end
    ant = 1 ;ant1 = 2 ;ant2 = 3 ;ant3 = 4; loo = 1
    20.times do
      if $dice["tal#{ant}"] == x and $dice["tal#{ant1}"] == x and $dice["tal#{ant2}"] == x
        #3 lika
      end

    end
    x += 1
  end


end

dice(5,6)
omg(1)
gör($dice["tal1"],$dice["tal2"],$dice["tal3"],$dice["tal4"],$dice["tal5"])
