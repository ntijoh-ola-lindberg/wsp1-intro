class App < Sinatra::Base
    
    get '/' do
        "Hola!"
    end
    
    get '/upcase/:eng_word' do | eng_word |
        eng_word.upcase
    end

    get '/downcase/:eng_word' do | eng_word |
        eng_word.downcase
    end

    get '/capitalize/:eng_word' do | eng_word |
        eng_word.capitalize
    end

    get '/reverse/:eng_word' do | eng_word |
        "<p> #{ eng_word.reverse } </p>"
    end

    get '/num_to_word/:num' do | num |
        case num.to_i
        when 1
            "<p>One</p>"
        when 2
            "<p>Two</p>"
        else
            "<p>Number missmatch</p>"
        end
    end

    get '/num_to_month/:num' do | num |
        months = {
            1 => "Jan",
            2 => "Feb",
            3 => "March"
        }

        months[num.to_i]
    end

    get '/add/:first/:second' do | first, second |
        @sum = first.to_i + second.to_i

        erb :math
    end

    get '/rovarorda/:word' do | word |        
        @chars = word.chars

        konsonanter = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v","w", "x", "z"]

        @rovarord = ""

        @chars.each do |c| 
            if konsonanter.include?(c)
                @rovarord += + c + "o" + c
            else 
                @rovarord += + c
            end
        end
    
        erb :rovarspraka
    end

    #1 Visa alla 12 månader på en lista på en ny ERB-sida
    #2 Visa en slumpad månad varje gång du laddar om sidan
    #3 Visa hur många månader det, idag, är kvar på året 
    #4 Lägg till fler räknesätt och / eller utöka räknaren på andra sätt
    #
    #5 Bygg en rövarspråks-metod https://barnensbibliotek.se/artiklar/lar-dig-rovarspraket
end