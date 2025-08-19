class App < Sinatra::Base
    
    # Routen visar en klocka med datum.
    #
    # Frågor att fundera på
    #   Var syns: p @time
    #   Vad gör raden: erb :clock
    #   Vad händer ifall @time inte finns?
    get '/' do
        @time = Time.now()
        p @time
        erb :clock
    end

    # Routen gör om ord till VERSALER
    # Notera att ingen ERB-fil visas. Istället råkar 
    # bara sista ordet som skrevs ut synas på webbsidan.
    # .downcase och .capitalize finns också som Ruby-metoder.
    get '/upcase/:eng_word' do | eng_word |
        eng_word.upcase
    end

    # Routen skriver ord baklänges.
    get '/reverse/:eng_word' do | eng_word |
        @word = eng_word
        @word_reversed = @word.reverse
        erb :reverse
    end

    # Routen gör om siffror till ord.
    # Gör om till if-else ifall det är bättre.
    get '/num_to_word/:num' do | num |
        @number = num
        @word
        case @number.to_i
        when 1
            @word = "one"
        when 2
            @word = "two"
        else
            @word = "Error: Number missmatch"
        end
        erb :num_to_word
    end

    # Routen gör om siffror till månader.
    # Routern har en "hash" som mappar siffror med månader.
    get '/num_to_month/:num' do | num |
        @number = num 

        months = {
            1 => "Jan",
            2 => "Feb",
            3 => "March"
        }

        @month = months[num.to_i]

        erb :num_to_month
    end

    # Routen lägger ihop de två talen.
    get '/add/:first/:second' do | first, second |
        @first = first
        @second = second
        @sum = @first.to_i + @second.to_i

        erb :math
    end

    # Routen visar Yes om det är fredag - No annars. 
    #
    # Todo: Lägg till så routen istället för bara yes och no visar
    # Is it Friday - no it is Monday, Tuesday, Wednesday, etc.
    get '/friday' do
        @friday = Time.now().friday?
        erb :friday
    end

    # Routen gör om ordet till Rövarspråket. 
    #
    # Efter varje konsonant lägger du till bokstaven ”o” 
    # och sedan samma konsonant en gång till. 
    # "b" blir "bob" på rövarspråket.
    #
    # hej   -> hohejoj
    # glass -> goglolasossos
    # frukt -> fofrorukoktot
    get '/rovarsprak/:word' do | word |
        @ord = word

        @rovarord = "totododo"

        #TODO: Bygg en rövarspråksgenerator
    
        erb :rovarsprak
    end
end
