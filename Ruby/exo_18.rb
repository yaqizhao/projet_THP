array = Array.new(50)
for count in 1..50
    if count < 10
        number = "0" + String(count)
    else
        number = String(count)
    end
    array[count] = "jean.dupont.#{number}@email.fr"
end
