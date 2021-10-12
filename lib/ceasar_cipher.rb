def ceasar_cipher(string, number=5) 
    # retourne un tableau contenant le code chaque lettre
    ascii = string.chars.map{|code| code.ord} 

    # retourne un tableau contenant l'ajout de number dans chaque code des lettres
    crypt = ascii.map{|code| code += number}
    
    # convertie le tableau avec les code ascii en lettres puis reforme le message
    result = crypt.map{|code|code.chr}.join("").to_s 
    return result
end

ceasar_cipher("test", 5)
#ceasar_cipher("tu pue du cul batard", 3)
#ceasar_cipher("Les chaussettes sont mouillees", 2)
