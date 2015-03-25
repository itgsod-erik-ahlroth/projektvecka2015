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

def reroll(x)
  #skapa
end

def omg(x)
  #vad som kan göras
end


def gör
  x = 1
  6.times do
    print "_X_"
    if $dice["tal1"] == x and $dice["tal2"] == x and $dice["tal3"] == x and $dice["tal4"] == x and $dice["tal5"] == x
      #5 lika
    end
    ant = 1 ;ant1 = 2 ;ant2 = 3 ;ant3 = 4; loo = 1

    5.times do
      print "4, "
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

    ant = 1 ;ant1 = 2 ;ant2 = 3
    until ant == 6
      print "3,|#{ant}|#{ant1}|#{ant2}| "
      if $dice["tal#{ant}"] == x and $dice["tal#{ant1}"] == x and $dice["tal#{ant2}"] == x
        #3 lika
      end
      if ant2 == 5
        ant2 = 1
        ant1 += 1
        while ant == ant1 or ant == ant2 or ant1 == ant2
          ant2 += 1
          if ant2 == 6
            ant2 = 1
            ant1 += 1
            if ant1 == 6
              ant1 = 1
              ant += 1
            end
          end
        end
      else
      ant2 += 1
      while ant == ant2 or ant1 == ant2 or ant1 == ant1
        ant2 += 1
      if ant2 == 5
        ant2 = 1
        ant1 += 1
        while ant == ant1 or ant == ant2 or ant1 == ant2
          ant2 += 1
          if ant2 == 6
            ant2 = 1
            ant1 += 1
            if ant1 == 6
              ant1 = 1
              ant += 1
            end
          end
        end
      end
      end
      while ant == ant2 or ant1 == ant2 or ant1 == ant1
        ant2 += 1
        if ant2 == 5
          ant2 = 1
          ant1 += 1
          while ant == ant1 or ant == ant2 or ant1 == ant2
            ant2 += 1
            if ant2 == 6
              ant2 = 1
              ant1 += 1
              if ant1 == 6
                ant1 = 1
                ant += 1
              end
            end
          end
        end
      end
      end
      end

    ant = 1 ;ant1 = 2
    until ant == 5
      print "2, "
      if $dice["tal#{ant}"] == x and $dice["tal#{ant1}"] == x
        if ant1 == 5
          ant1 = 1
          ant += 1
          while ant == ant1
            ant1 += 1
            if ant1 == 6
              ant1 = 1
              ant += 1
            end
          end
        else
          ant1 += 1
        end
        end
    end

puts " "

    x += 1
  end

  end


dice(5,6)
gör