class Bottles
  def initialize
  end

  def verse(verse_number)
    if verse_number > 2 
      phrase =  <<-VERSE
#{verse_number} bottles of beer on the wall, #{verse_number} bottles of beer.
Take one down and pass it around, #{verse_number - 1} bottles of beer on the wall.
VERSE
    elsif verse_number == 2
      phrase =  <<-VERSE
2 bottles of beer on the wall, 2 bottles of beer.
Take one down and pass it around, 1 bottle of beer on the wall.
VERSE
    elsif verse_number == 1
      phrase =  <<-VERSE
1 bottle of beer on the wall, 1 bottle of beer.
Take it down and pass it around, no more bottles of beer on the wall.
VERSE
    else
      phrase =  <<-VERSE
No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall.
    VERSE
    end
    phrase   
  end

  def verses(end_verse_number, start_verse_number)
    phrase_string = ""
    end_verse_number.downto(start_verse_number).each do |verse_number| 
      phrase_string << verse(verse_number)
      unless verse_number == start_verse_number
        phrase_string << "\n"
      end
    end
    phrase_string
  end

  def song
    verses(99, 0)
  end
end
