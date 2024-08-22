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

    get '/word_to_num/:word' do | word |
        @num = nil
        case word.downcase
        when "one"
            @num = 1
        when "two"
            @num = 2
        end
      
        erb :words
    end

    get '/add/:first/:second' do | first, second |
        @sum = first.to_i + second.to_i

        erb :math
    end
end