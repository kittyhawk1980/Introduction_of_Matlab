function new_seats = modified_sainte_lague_method(votes,seats)
    factor = 1.4;
    z = zeros(1,11);
    for i = 1:11
        if seats == 0 
            z(i) = votes(i) / factor;
        elseif seats >= 0
            z(i) = votes(i) / (2 * seats(i) + 1);
        end
    end
    max_index = find(z == max(z(:)));
    seats(max_index) = seats(max_index) + 1;
    new_seats = seats;
end