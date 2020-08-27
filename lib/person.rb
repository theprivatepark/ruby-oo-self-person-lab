require 'pry'
class Person
    
    attr_reader :name, :happiness, :hygiene
    attr_accessor :amount, :bank_account
  
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(new_happiness)
        @happiness = new_happiness.clamp(0, 10)
    end

    def hygiene=(new_hygiene)
        @hygiene = new_hygiene.clamp(0, 10)
    end

    def happy?
        self.happiness > 7? true : false
    end

    def clean?
        self.hygiene > 7? true : false
    end

    def get_paid(salary) #100
       self.bank_account=(self.bank_account + salary)
       return "all about the benjamins"
    end

    def take_bath
        self.hygiene=(self.hygiene + 4)
        # binding.pry
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene=(self.hygiene - 3)
        self.happiness=(self.happiness + 2)
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness=(self.happiness + 3) #8
        friend.happiness=(friend.happiness + 3)
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(callee, topic)
        if topic == "politics"
            self.happiness=(self.happiness - 2) && callee.happiness=(callee.happiness - 2)
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness=(self.happiness + 1) && callee.happiness=(callee.happiness + 1)
            return "blah blah sun blah rain"
        else 
            return "blah blah blah blah blah"
        end
    end

end

# anney = Person.new("anney")

# anney.bank_account=() writermethod
# anney.happiness #8