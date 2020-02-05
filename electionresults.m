% function electionresults()
    parties = {'M','C','FP','KD','PP','MP','SD','FI','S','V','Other'};
    load euelection2014 euvalet2014
    parties_votes = euvalet2014;
    seats = zeros(1,11);
    z = zeros(1,11);
    for i = 1 : 290
        seats = dhondt_formula(parties_votes(i,:),seats);
    end
    
% end



 