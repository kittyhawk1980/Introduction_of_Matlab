function new_seats = sainte_lague_method(votes,seats)
    z = zeros(1,11);
    for i = 1:11
        z(i) = votes(i) / (2 * seats(i) + 1);
    end
    max_index = find(z == max(z(:)));
    seats(max_index) = seats(max_index) + 1;
    new_seats = seats;
end