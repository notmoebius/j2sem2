=begin
def word_counter(corpus, ary_dict)
    occurrence = hash.new("res")   # initalisation du hash de résultats
    tab = corpus.split(" ") # je créé un tableau des mots de string to play

    # je boucle sur le dictionnaire pour compter le nb de mots
    ary_dict.each do |word|
        counter = tab.count {|x| x.match Regexp.new("^"+Regexp.escape(word)+"$", Regexp::IGNORECASE)}
        if counter > O 
            occurrence[word] = counter
        end
    end
    return occurrence
end
=end

def word_counter (tab, dictionary)
	tab=tab.split(' ')
	res=Hash.new("res")
	dictionary.each do |mot|
		nbr = tab.count {|x| x.match Regexp.new("^"+Regexp.escape(mot)+"$", Regexp::IGNORECASE)}
		res[mot]=nbr if nbr > 0
	end
	return res
end 