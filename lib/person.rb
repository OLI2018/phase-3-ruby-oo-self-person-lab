
class Person 
    
    attr_reader :name, :happiness, :hygiene, :bank_account
    attr_writer :bank_account
    
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
      end

      def happiness=(number)
        @happiness =  if number > 10
                        10
                      elsif number < 0
                        0
                      else
                        number
                      end
    end


    def hygiene=(number)
        @hygiene =  if number > 10
                        10
                      elsif number < 0
                        0
                      else
                        number
                      end
    end

    def clean?
        self.hygiene > 7? true : false 
    end

    def happy?
        self.happiness > 7? true : false 
    end

    def get_paid(amount)
        self.bank_account = self.bank_account + amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene = self.hygiene + 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness = self.happiness + 2
        self.hygiene = self.hygiene - 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        case topic 
        when "politics"
          [self, friend].each { |person| person.happiness -= 2 }
          "blah blah partisan blah lobbyist"
        when "weather"
          [self, friend].each { |person| person.happiness += 1 }
          "blah blah sun blah rain"
        else
          "blah blah blah blah blah"
        end
    end
end



max = Person.new("Max")
stella  = Person.new("Stella")


