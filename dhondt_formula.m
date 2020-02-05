function new_seats = dhondt_formula(votes,seats)
    z = zeros(1,11);
    for i = 1:11
        z(i) = votes(i) / (seats(i) + 1);
    end
    max_index = find(z == max(z(:)));
    seats(max_index) = seats(max_index) + 1;
    new_seats = seats;
end
    