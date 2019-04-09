def cipher_one_letter(code, rotate_key)
    # je réupère le cractere à chiffrer et check si appartient à l'alphabet
    val_code = code.ord
    if (val_code < 65 || val_code >90) && (val_code < 97 || val_code >122)
        return code
    end
    if (val_code >=97 && val_code <=119)  # je calcule de a->z inclus
        return (val_code + rotate_key).chr 
    elsif val_code > 119         # je calcule pour décaler vers A->C
        return (97 + ((val_code + rotate_key) - 123)).chr 
    end

    if (val_code >=65 && val_code <=87)  # je calcule de A->W inclus
        return (val_code + rotate_key).chr 
    elsif val_code > 87         # je calcule pour décaler vers A->C
        return (65 + ((val_code + rotate_key) - 91)).chr 
    end
end

def caesar_cipher(to_cipher, cipher_key)
   # split des mots
   words = to_cipher.split(" ")
   result = []
   
   # analyse les mots pour convertir 
   words.each do | word |
        result_int = []
        size_word = word.length
        # for i in [0..size_word] do
        #     puts "#{word[0]} #{word[1]}"
        #     result << cipher_one_letter(word[i],cipher_key)
        # end
        0.upto(size_word-1) do |i|
            if word[i..i] != nil
                result.push cipher_one_letter(word[i..i],cipher_key)
            end
        end
        result_int.join("")
        result << result_int
   end
   return result.join(' ')
end