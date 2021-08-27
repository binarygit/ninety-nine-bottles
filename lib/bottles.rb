#!/usr/bin/ruby

require 'pry-byebug'

class Bottles
  def verse(num)
    case num
    when 0
      <<-Verse
No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall.
      Verse
    else
        <<-Verse
#{num} #{container(num)} of beer on the wall, #{num} #{container(num)} of beer.
Take #{pronoun(num)} down and pass it around, #{quantity(num - 1)} #{container(num-1)} of beer on the wall.
        Verse
    end
  end

  def quantity(number = 0)
    if number == 0
      'no more'
    else
      number
    end
  end

  def pronoun(number) 
    if number == 1
      'it'
    else
      'one'
    end
  end

  def container(number)
    if number == 1
     'bottle' 
    else
      'bottles'
    end
  end

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
end


