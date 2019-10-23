function [Out1,Out2] = GeneticCode(Seq)
L=length(Seq);%Below are 20 amino acids
Seq2=cell(1,L);Seq3=cell(1,L);
Phe=['UUU','UUC'];Ile=['AUU','AUC','AUA'];
Leu=['UUA','UUG','CUU','CUC','CUA','CUG'];
Met=['AUG'];NONE=['UAA','UAG','UGA'];
Val=['GUU','GUC','GUA','GUG'];
Ser=['UCU','UCC','UCA','UCG','AGU','AGC'];
Pro=['CCU','CCC','CCA','CCG'];
Thr=['ACU','ACC','ACA','ACG'];
Ala=['GCU','GCC','GCA','GCG'];
Tyr=['UAU','UAC'];His=['CAU','CAC'];
Gln=['CAA','CAG'];Asn=['AAU','AAC'];
Lys=['AAA','AAG'];Asp=['GAU','GAC'];
Glu=['GAA','GAG'];Cys=['UGU','UGC'];
Arg=['CGU','CGC','CGA','CGG','AGA','AGG'];
Gly=['GGU','GGC','GGA','GGG'];Trp=['UGG'];
for i=1:(L)
    if contains(Seq(i),Phe)
        AA='Phe';Aa='F';
    elseif contains(Ile,Seq(i))
        AA='Ile';Aa='I';
    elseif contains(Leu,Seq(i))
        AA='Leu';Aa='L';
    elseif contains(Met,Seq(i))
        AA='Met';Aa='M';
    elseif contains(NONE,Seq(i))
        AA='NON';Aa='-';
    elseif contains(Val,Seq(i))
        AA='Val';Aa='V';
    elseif contains(Ser,Seq(i))
        AA='Ser';Aa='S';
    elseif contains(Pro,Seq(i))
        AA='Pro';Aa='P';
    elseif contains(Thr,Seq(i))
        AA='Thr';Aa='T';
    elseif contains(Ala,Seq(i))
        AA='Ala';Aa='A';
    elseif contains(Tyr,Seq(i))
        AA='Tyr';Aa='Y';
    elseif contains(Gln,Seq(i))
        AA='Gln';Aa='Q';
    elseif contains(Lys,Seq(i))
        AA='Lys';Aa='K';
    elseif contains(Glu,Seq(i))
        AA='Glu';Aa='I';
    elseif contains(Arg,Seq(i))
        AA='Arg';Aa='R';
    elseif contains(Gly,Seq(i))
        AA='Gly';Aa='G';
    else
        AA='---';Aa='-';
    end
    Seq2{i}=AA;Seq3{i}=Aa;
end
Out1=Seq2;Out2=Seq3;
end