#!/usr/bin/ruby

class Bottles

  def verses(start_from, end_in)
    verses = []
    i = 0
    loop do 
      num = start_from - i
      verses.push(verse(num))
      break if num == end_in
      verses.push("\n")
      i += 1
    end
   verses.reduce { |first, second| first + second}
  end

  def song
    verses(99, 0)
  end

  def verse(num)
        <<-Verse
#{quantity(num).capitalize} #{container(num)} of beer on the wall, #{quantity(num)} #{container(num)} of beer.
#{action(num)}, #{quantity(sucessor(num))} #{container(sucessor(num))} of beer on the wall.
        Verse
  end

  def quantity(number)
    if number == 0
      'no more'
    else
      number.to_s
    end
  end

  def container(number)
    if number == 1
     'bottle' 
    else
      'bottles'
    end
  end

  def action(number)
    if number == 0
      'Go to the store and buy some more'
    else
      "Take #{pronoun(number)} down and pass it around"
    end
  end

  def pronoun(number) 
    if number == 1
      'it'
    else
      'one'
    end
  end

  def sucessor(number)
    if number == 0
      99
    else
      number - 1
    end
  end
end


