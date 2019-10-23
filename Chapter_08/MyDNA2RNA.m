function [Result]=MyDNA2RNA(Seq)
L=length(Seq);
Result ='';
for i=1:L
    switch Seq(i)
        case 'A'
            Result(i) = 'U';
        case 'T'
            Result(i) = 'A';
        case 'G'
            Result(i) = 'C';
        case 'C'
            Result(i) = 'G';
        otherwise
            disp('Code has WRONG Letter');
    end
end
end