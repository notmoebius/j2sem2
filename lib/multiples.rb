def is_multiple_of_3_or_5?(current_number)
     if current_number % 3 == 0
        return true
    elsif current_number % 5 == 0
        return true
    else return false
    end 
end

def sum_of_3_or_5_multiples(final_number)
    total = 0  # j'initialise le total à retourner
    if final_number.class != Integer || final_number < 0 # je teste si c'est bien un integer, sinon retourne une phrase
        return "Yo ! Je ne prends que les entiers naturels. TG"
    end
    0.upto final_number-1 do |i|   
        if is_multiple_of_3_or_5?(i)
            total += i
        end 
    end
    return total
end