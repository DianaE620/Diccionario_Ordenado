def diccionary_sort

  diccionario = []

  puts "Escribe una palabra"
  palabra = gets.chomp

  until palabra == "" do

    if palabra =~ /[a-zA-Z]/
      diccionario << palabra.strip
    else
      puts "No escribiste una palabra"
    end

    puts "Escribe una palabra o enter para ver el diccionario"
    palabra = gets.chomp

  end

  diccionario = diccionario.sort_by { |palabra| palabra.capitalize }

  puts "Felicidades tu diccionario tiene #{diccionario.length} palabras"

  diccionario.each { |palabra| puts palabra}

end

diccionary_sort