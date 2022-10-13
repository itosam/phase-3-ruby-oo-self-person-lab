# # your code goes here
# class Person
# #we use attr_reader on name, not attr_accessor, as we don't want the name to be overwritten
#     attr_reader :name, :happiness, :hygiene
# #attr_accessor allows for both Getting (reading) and Setting(writing/writing over) the information we put in
#     attr_accessor :bank_account

#     def initialize(name)
#         @name = name
#         @bank_account = 25
#         @happiness = 8
#         @hygiene = 8

#     end

#     def happiness=(value)
#         @happiness = if value > 10
#                         10
#                     elsif  
#                         value < 0
#                             0
#                     else
#                         value
#                     end
#     end

#     def happy?
#         self.happiness > 7
#     end

#     def hygiene=(value)
#         @hygiene = if value > 10
#                         10
#                     elsif  
#                         value < 0
#                             0
#                     else
#                         value
#                     end
#     end

#     def clean?
#         self.hygiene > 7
#     end

#     def get_paid(amount)
#         self.bank_account += amount
#         "all about the benjamins"
#     end

#     def take_bath
#         self.hygiene += 4
#         "Rub-a-dub just relaxing in the tub"
#     end

#     def work_out
#         self.happiness =+ 2
#         self.hygiened-= 3
#         "another one bites the dust"
#     end

#     def call_friend(friend)
#         self.happiness += 3
#         friend.happiness += 3
#         "Hi #{friend.name}! It's #{self.name}. How are you?"

#     end

#     def start_conversation(friend, topic)
#         if topic == "politics"
#             self.happiness -= 2
#             friend.happiness -= 2
#             "blah blah partisan blah lobbyist"
#         elsif topic == "weather"
#             self.happiness += 1
#             friend.happiness += 1
#             "blah blah blah sun blah rain"
#         else
#             "blah blah blah blah blah"
#         end
#     end

# end

class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account
    #takes an argument of a name and saves it to the object. 
    def initialize(name)
        @name = name
        #When a new person is created, they should have the following attributes in addition to their name (saved to instance variables)
        #@bank_account with an initial value of 25
        @bank_account = 25
        #@happiness with an initial value of 8
        @happiness =  8
        #@hygiene with an initial value of 8
        @hygiene =  8
    end 
        #Person#happiness=(value): sets the value of the person's happiness points. The maximum value allowed is 10, and the minimum value allowed is 0.
    def happiness=(value)
        @happiness = if value > 10
                        10
                    elsif value < 0
                        0
                    else
                    value
                    end
    end
        #Person#hygiene=(value): sets the value of the person's hygiene points. The maximum value allowed is 10, and the minimum value allowed is 0.
        def hygiene=(value)
        @hygiene = if value > 10
                        10
                    elsif value < 0
                        0
                    else
                    value
                    end
    end
        #Additional Instance Methods
        def happy?
            self.happiness > 7
        end

        def clean?
            self.hygiene > 7
        end

    def get_paid(amount)
        self.bank_account += amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    def  call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness -= 2
            friend.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            friend.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end
end