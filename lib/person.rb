require 'pry'
# your code goes here
class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene


    def initialize(name)
        self.name = name
        self.happiness = 8
        self.hygiene = 8
        @bank_account = 25
    end

    def bank_account
        @bank_account = @bank_account
    end

    def happiness
        if @happiness <0 
            @happiness = 0
        elsif @happiness >10
            @happiness = 10
            
        elsif @happiness >= 0 || @happiness <=10
            @happiness = @happiness
        end
    end

    def hygiene
        if @hygiene <0 
            @hygiene = 0
        elsif @hygiene >10
            @hygiene = 10
            
        elsif @hygiene >= 0 || @hygiene <=10
            @hygiene = @hygiene
        end
    end
    
    def happy?
        if @happiness > 7 
            true
        else
            false
        end
    end

    def clean?
        if @hygiene > 7
             true
        else 
            false
        end
    end

    def get_paid(salary)
        self.bank_account += salary
        return "all about the benjamins"   
    end

    def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        if self.hygiene < 0
            self.hygiene = 0
        end
        if self.happiness > 10
            self.happiness = 10
        end  
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        friend.happiness += 3
        self.happiness += 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            person.happiness -= 2
            self.happiness -= 2
            if person.happiness < 0
                person.happiness = 0
            end  
            return "blah blah partisan blah lobbyist"
            binding.pry
        elsif topic == "weather"
            person.happiness += 1
            self.happiness += 1
            if person.happiness > 10
                person.happiness = 10
            end 
            return "blah blah sun blah rain" 
        else
            "blah blah blah blah blah"
        end
    end
end