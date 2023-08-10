def caesar_cipher(words,number_of_shift)
    split_words = words.split("").map{
        |x| 
        temp = x.ord
        if  temp >= 65 and temp <= 90
            if temp + number_of_shift > 90
                temp = 65 + (temp + number_of_shift - 90 - 1)
            else
                puts temp
                temp += number_of_shift
            end    
        elsif temp >= 97 and temp <=122
            if temp + number_of_shift > 122
                temp = 97 + (temp + number_of_shift - 122 - 1)
            end
            temp += number_of_shift
        else
            temp = x.ord    
        end        
    }.map{|x| x.chr}.join("")
    puts split_words
end

caesar_cipher("What a string!", 5)