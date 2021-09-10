def caesar_cipher(str, factor)
    new_arr = []
    final_arr = []
    ascii_arr = str.bytes
    p ascii_arr
    ascii_arr.each do |ele|
        if ele >= 65 && ele <= 90
            if (ele + factor) > 90
                ele = ele + factor - 26
                new_arr.push(ele)
            else 
                ele = ele + factor
                new_arr.push(ele)
            end
            
        elsif ele >= 97 && ele <= 122
            if (ele + factor) > 122
                ele = ele + factor - 26
                new_arr.push(ele)
            else
                ele = ele + factor
                new_arr.push(ele)
            end
            
        else new_arr.push(ele)     
        end      
    end
        new_arr.each do |ele|
        final_arr.push(ele.chr)       
    end
    
    return final_arr.join("")
end

caesar_cipher("What a string!", 5)