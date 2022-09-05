# your code goes here
require "pry"
class Person
  attr_accessor :bank_account, :happiness, :hygiene
  attr_reader :name

  def initialize (name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(number)
    @happiness = 
    if number > 10
        10
    elsif number < 0
      0
    else
      number
    end
  end

  def hygiene=(number)
    @hygiene = 
    if number > 10
        10
    elsif number < 0
      0
    else
      number
    end
  end

  def happy?
    self.happiness > 7
  end

  def clean?
    self.hygiene > 7
  end

  def get_paid(amount)
    self.bank_account = bank_account + amount
    "all about the benjamins"
  end

  def take_bath
    self.hygiene = hygiene + 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness = happiness + 2
    self.hygiene = hygiene - 3
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness = happiness + 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
    if topic == "politics"
      self.happiness = happiness - 2
      friend.happiness -= 2
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness = happiness + 1
      friend.happiness += 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end


end
