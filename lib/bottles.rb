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
    when 1
        <<-Verse
1 bottle of beer on the wall, 1 bottle of beer.
Take it down and pass it around, no more bottles of beer on the wall.
        Verse
    when 2
       <<-Verse
2 bottles of beer on the wall, 2 bottles of beer.
Take one down and pass it around, 1 bottle of beer on the wall.
        Verse
    else
        <<-Verse
#{num} bottles of beer on the wall, #{num} bottles of beer.
Take one down and pass it around, #{num-1} bottles of beer on the wall.
        Verse
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


