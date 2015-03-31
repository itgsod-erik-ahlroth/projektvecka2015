require 'colorize'
$dice = Hash.new
$value = Hash.new
$omg = 1
$totpoint = 0
$omgpoint = 0
$likasvar = 1

def dice(x,z)
  (1..x).each do |y|
    $dice["tal#{y}"] = rand(1..(z))
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
  print "\b" *2 ;print ' ' ;print "\033[1B"; print"\r"
end

def reroll(a,b,c,d,e)
  if a == 1
    $dice['tal1'] = rand(1..(6))
  end
  if b == 1
    $dice['tal2'] = rand(1..(6))
  end
  if c == 1
    $dice['tal3'] = rand(1..(6))
  end
  if d == 1
    $dice['tal4'] = rand(1..(6))
  end
  if e == 1
    $dice['tal5'] = rand(1..(6))
  end
  ant = 1
  5.times do
    if $dice["tal#{ant}"] <= 6/2
      print "#{$dice["tal#{ant}"]}, ".colorize(:blue).blink
    else
      print "#{$dice["tal#{ant}"]}, ".colorize(:red).blink
    end
    ant += 1
  end
  print "\b" *2 ;print ' ' ;print "\033[1B"; print"\r"
end


def yatzy?
  a = 1
  6.times do
    if $dice["tal1"] == a and $dice["tal2"] == a and $dice["tal3"] == a and $dice["tal4"] == a and $dice["tal5"] == a
      if $omg > 6
      if $omgpoint < 50
        $omgpoint = 50
        $value["omg#{$omg}:1"] = "11:#{a}"
      elsif $omgpoint == 50
        $value["omg#{$omg}#{$likasvar}"]
        $likasvar += 1
      end
      else
        if $omgpoint < x*5
          $omgpoint = x*5
          $value["omg#{$omg}:1"] = "5:#{x}"
        elsif $omgpoint == x*5
          $value["omg#{$omg}#{$likasvar}"]
          $likasvar += 1
        end
        end
    end
    a += 1
  end
  end

def lika4?
  x = 1
  6.times do

    ant = 1 ;ant1 = 2 ;ant2 = 3 ;ant3 = 4; loo = 1
    5.times do
      if $dice["tal#{ant}"] == x and $dice["tal#{ant1}"] == x and $dice["tal#{ant2}"] == x and $dice["tal#{ant3}"] == x

        if $omgpoint < x*4
          $omgpoint = x*4
          $value["omg#{$omg}:1"] = "4:#{x}"

        elsif $omgpoint == x*4
          $value["omg#{$omg}#{$likasvar}"]
          $likasvar += 1
        end
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
    x += 1
  end
  end

  def lika3?
    x = 1
    6.times do

      ant = 1 ;ant1 = 2 ;ant2 = 3;hgr = 0
      until ant == 6
        if ant*ant1*ant2 > hgr
          hgr = ant*ant1*ant2
          if $dice["tal#{ant}"] == x and $dice["tal#{ant1}"] == x and $dice["tal#{ant2}"] == x
              if $omgpoint < x*3
                $omgpoint = x*3
                $value["omg#{$omg}:1"] = "3:#{x}"

              elsif $omgpoint == x*3
                $value["omg#{$omg}#{$likasvar}"]
                $likasvar += 1
              end

          end
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
x += 1
    end
    end

  def lika2?

    x = 1
    6.times do

      ant = 1 ;ant1 = 2;hgr = 0
      until ant == 6
        if ant*ant1 > hgr
          hgr = ant*ant1
          if $dice["tal#{ant}"] == x and $dice["tal#{ant1}"] == x

              if $omgpoint < x*2
                $omgpoint = x*2
                if $omg > 6
                  $value["omg#{$omg}:1"] = "6:#{x}"

                else

                $value["omg#{$omg}:1"] = "2:#{x}"
                end
              elsif $omgpoint == x*2
                $value["omg#{$omg}#{$likasvar}"]
                $likasvar += 1
              end
            end
        end
        if ant1 == 5
          ant1 = 1
          ant += 1
          while ant == ant1
            ant1 += 1
            if ant1 == 6
              ant1 = 1
              ant += 1
              if ant1 == 6
                ant1 = 1
                ant += 1
              end
            end
          end
        else
          ant1 += 1
          while ant == ant1
            ant1 += 1
            if ant1 == 6
              ant1 = 1
              ant += 1
            end
          end
          while ant == ant1
            ant1 += 1
            if ant1 == 6
              ant1 = 1
              ant += 1
            end
          end
        end
      end


      x += 1
    end

  end

  def kak?
    x = 1
    y = 2
    6.times do
    ant = 1;ant1 = 2;ant2 = 3;ant3 = 4;ant4 = 5; hgr = 0
    until ant == 6
      if ant*ant1*ant2*ant3*ant4 > hgr
        hgr = ant*ant1*ant2*ant3*ant4
      if $dice["tal#{ant}"] == x and $dice["tal#{ant1}"] == x and $dice["tal#{ant2}"] == x and $dice["tal#{ant3}"] == y and $dice["tal#{ant4}"] == y

        if $omgpoint < x*3+y*2
          $omgpoint = x*3+y*2
          $value["omg#{$omg}:1"] = "10:#{x},#{y}"

        elsif $omgpoint == x*3+2*y
          $value["omg#{$omg}#{$likasvar}:1"]
          $likasvar += 1
        end
      end
        end

      if ant4 == 5
        ant4 = 1
        ant3 += 1
        if ant3 == 6
          ant3 = 1
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
        while ant == ant1 or ant == ant2 or ant == ant3 or ant == ant4 or ant1 == ant2 or ant1 == ant3 or ant1 == ant4 or ant2 == ant3 or ant2 == ant4 or ant3 == ant4
          ant4 = 1
          ant3 += 1
          if ant3 == 6
            ant3 = 1
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
      else
        ant4 += 1
        if ant4 == 5
          ant4 = 1
          ant3 += 1
          if ant3 == 6
            ant3 = 1
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
          while ant == ant1 or ant == ant2 or ant == ant3 or ant == ant4 or ant1 == ant2 or ant1 == ant3 or ant1 == ant4 or ant2 == ant3 or ant2 == ant4 or ant3 == ant4
            ant4 = 1
            ant3 += 1
            if ant3 == 6
              ant3 = 1
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
    if y == 6
      y = 1
      x += 1
      while x == y
        y += 1
        if y == 7
          y = 1
          x += 1
          if y == 7
            y = 1
            x += 1
          end
        end
      end
    else
      y += 1
      while x == y
        y += 1
        if y == 7
          y = 1
          x += 1
        end
      end
      while x == y
        y += 1
        if y == 7
          y = 1
          x += 1
        end
      end
    end
    end
  end

def litensteg?
    ant = 1;ant1 = 2;ant2 = 3;ant3 = 4;ant4 = 5
    until ant == 6
      if $dice["tal#{ant}"] == 1 and $dice["tal#{ant1}"] == 2 and $dice["tal#{ant2}"] == 3 and $dice["tal#{ant3}"] == 4 and $dice["tal#{ant4}"] == 5
        if $omgpoint < 15
          $omgpoint = 15
          $value["omg#{$omg}:1"] = "8:0"

        elsif $omgpoint == 15
          $value["omg#{$omg}#{$likasvar}"]
          $likasvar += 1
        end
      end

      if ant4 == 5
        ant4 = 1
        ant3 += 1
        if ant3 == 6
          ant3 = 1
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
        while ant == ant1 or ant == ant2 or ant == ant3 or ant == ant4 or ant1 == ant2 or ant1 == ant3 or ant1 == ant4 or ant2 == ant3 or ant2 == ant4 or ant3 == ant4
          ant4 = 1
          ant3 += 1
          if ant3 == 6
            ant3 = 1
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
      else
        ant4 += 1
        if ant4 == 5
          ant4 = 1
          ant3 += 1
          if ant3 == 6
            ant3 = 1
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
          while ant == ant1 or ant == ant2 or ant == ant3 or ant == ant4 or ant1 == ant2 or ant1 == ant3 or ant1 == ant4 or ant2 == ant3 or ant2 == ant4 or ant3 == ant4
            ant4 = 1
            ant3 += 1
            if ant3 == 6
              ant3 = 1
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
  end


def storsteg?
  ant = 1;ant1 = 2;ant2 = 3;ant3 = 4;ant4 = 5
  until ant == 6
    if $dice["tal#{ant}"] == 2 and $dice["tal#{ant1}"] == 3 and $dice["tal#{ant2}"] == 4 and $dice["tal#{ant3}"] == 5 and $dice["tal#{ant4}"] == 6
      if $omgpoint < 20
        $omgpoint = 20
        $value["omg#{$omg}:1"] = "9:0"

      elsif $omgpoint == 20
        $value["omg#{$omg}#{$likasvar}"]
        $likasvar += 1
      end
    end

    if ant4 == 5
      ant4 = 1
      ant3 += 1
      if ant3 == 6
        ant3 = 1
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
      while ant == ant1 or ant == ant2 or ant == ant3 or ant == ant4 or ant1 == ant2 or ant1 == ant3 or ant1 == ant4 or ant2 == ant3 or ant2 == ant4 or ant3 == ant4
        ant4 = 1
        ant3 += 1
        if ant3 == 6
          ant3 = 1
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
    else
      ant4 += 1
      if ant4 == 5
        ant4 = 1
        ant3 += 1
        if ant3 == 6
          ant3 = 1
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
        while ant == ant1 or ant == ant2 or ant == ant3 or ant == ant4 or ant1 == ant2 or ant1 == ant3 or ant1 == ant4 or ant2 == ant3 or ant2 == ant4 or ant3 == ant4
          ant4 = 1
          ant3 += 1
          if ant3 == 6
            ant3 = 1
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
end

def enav?
  x = 1
  6.times do
    ant = 1 ;hgr = 0
    until ant == 6
      if ant > hgr
        hgr = ant
        if $dice["tal#{ant}"] == x
          if $omgpoint < x
              $omgpoint = x
            $value["omg#{$omg}:1"] = "1:#{x}"

          elsif $omgpoint == x
            $value["omg#{$omg}#{$likasvar}"]
            $likasvar += 1
          end

        end
      end
      ant += 1
    end


    x += 1
  end

end

def tvåpar?
  x = 1
  y = 2
  6.times do
    ant1 = 2;ant2 = 3;ant3 = 4;ant4 = 5; hgr = 0
    until ant1 == 6
      if ant1 * ant2 *ant3 *ant4 > hgr
        hgr = ant1*ant2*ant3*ant4
      if $dice["tal#{ant1}"] == x and $dice["tal#{ant2}"] == x and $dice["tal#{ant3}"] == y and $dice["tal#{ant4}"] == y
        if $omgpoint < x*2+y*2
          $omgpoint = x*2+y*2
          $value["omg#{$omg}:1"] = "7:#{x},#{y}"
        elsif $omgpoint == x*2+y*2
          $value["omg#{$omg}#{$likasvar}"]
          $likasvar += 1
        end
      end
        end


      if ant4 == 5
        ant4 = 1
        ant3 += 1
        if ant3 == 6
          ant3 = 1
          ant2 += 1
          if ant2 == 6
            ant2 = 1
            ant1 += 1
          end
        end
        while ant1 == ant2 or ant1 == ant3 or ant1 == ant4 or ant2 == ant3 or ant2 == ant4 or ant3 == ant4
          ant4 = 1
          ant3 += 1
          if ant3 == 6
            ant3 = 1
            ant2 += 1
            if ant2 == 6
              ant2 = 1
              ant1 += 1
            end
          end
        end
      else
        ant4 += 1
        if ant4 == 5
          ant4 = 1
          ant3 += 1
          if ant3 == 6
            ant3 = 1
            ant2 += 1
            if ant2 == 6
              ant2 = 1
              ant1 += 1
            end
          end
          while ant1 == ant2 or ant1 == ant3 or ant1 == ant4 or ant2 == ant3 or ant2 == ant4 or ant3 == ant4
            ant4 = 1
            ant3 += 1
            if ant3 == 6
              ant3 = 1
              ant2 += 1
              if ant2 == 6
                ant2 = 1
                ant1 += 1
              end
            end
          end


        end
      end
    end
    if y == 6
      y = 1
      x += 1
      while x == y
        y += 1
        if y == 7
          y = 1
          x += 1
          if y == 7
            y = 1
            x += 1
          end
        end
      end
    else
      y += 1
      while x == y
        y += 1
        if y == 7
          y = 1
          x += 1
        end
      end
      while x == y
        y += 1
        if y == 7
          y = 1
          x += 1
        end
      end
    end
  end
end







def värdera

  alternativ= 1
  ant = 1
  ($likasvar-1).times do
    if   $value["omg#{$omg}#{ant}"] == $value["omg#{$omg}:1"]
      $value["omg#{$omg}:#{ant}"] = $value["omg#{$omg}#{ant}"]
      alternativ += 1
    end
    ant += 1
  end

  anv = $value["omg#{$omg}:#{rand(1..alternativ)}"]
  num1, num2 = anv.split(":")

num1 = num1.to_i; num2 = num2.to_i

  if num1 == 1
    puts "En av #{num2}"
  elsif num1 == 2
    puts "2 lika #{num2}"
  elsif num1 == 3
    puts "3 lika #{num2}"
  elsif num1 == 4
    puts "4 lika #{num2}"
  elsif num1 == 5
    puts "5 lika #{num2}"
  elsif num1 == 6
    puts "Ett par #{num2}"
  elsif num1 == 7
    num2, num3 = num2.split(",")
    puts "Två par #{num2}, #{num3.to_i}"
  elsif num1 == 8
    puts 'liten stege'
  elsif num1 == 9
    puts 'stor stege'
  elsif num1 == 10
    num2, num3 = num2.split(",")
    puts "kåk #{num2}, #{num3.to_i}"
  elsif num1 == 11
    puts "Yatzy eller 5 lika #{num2}"
  end

  # Testa sannolikhet för framtida omgångar

  $omg += 1
  $likasvar = 1
end

def gör

  if $omg <= 6

  yatzy?
  lika4?
  lika3?
  lika2?
  enav?
  elsif $omg > 6
    yatzy?
  kak?
  litensteg?
  storsteg?
  tvåpar?
    lika3?
    lika4?
  end


  end



dice(5,6)
gör
värdera