#!/usr/bin/perl 

#traduz uma sequencia de ácidos nucleicos em uma sequencia de proteinas segundo o código genético padrão

%codigogeneticopadrao = ( "ttt" => "Phe", "tct" => "Ser", "tat" => "Tir", "tgt" => "Cis", 
	                  "ttc" => "Phe", "tcc" => "Ser", "tac" => "Tir", "tgc" => "Cis",
                          "tta" => "Leu", "tca" => "Ser", "taa" => "TER", "tga" => "TER",
                          "ttg" => "Leu", "tcg" => "Ser", "tag" => "TER", "tgg" => "Trp",
                          "ctt" => "Leu", "cct" => "Pro", "cat" => "His", "cgt" => "Arg", 
	                  "ctc" => "Leu", "ccc" => "Pro", "cac" => "His", "cgc" => "Arg",
                          "cta" => "Leu", "cca" => "Pro", "caa" => "Gln", "cga" => "Arg",
                          "ctg" => "Leu", "ccg" => "Pro", "cag" => "Gln", "cgg" => "Arg",
                          "att" => "Ile", "act" => "Tre", "aat" => "Asn", "agt" => "Ser", 
	                  "atc" => "Ile", "acc" => "Tre", "aac" => "Asn", "agc" => "Ser",
                          "ata" => "Ile", "aca" => "Tre", "aaa" => "Lis", "aga" => "Arg",
                          "atg" => "Met", "acg" => "Tre", "aag" => "Lis", "agg" => "Arg",
                          "gtt" => "Val", "gct" => "Ala", "gat" => "Asp", "ggt" => "Gli", 
	                  "gtc" => "Val", "gcc" => "Ala", "gac" => "Asp", "ggc" => "Gli",
                          "gta" => "Val", "gca" => "Ala", "gaa" => "Glu", "gga" => "Gli",
                          "gtg" => "Val", "gcg" => "Ala", "gag" => "Glu", "ggg" => "Gli"
);

# Processa entrada

while ( $line = <DATA> ) {
    print "$line";
    chop();
    @triplas = unpack( "a3" x (length($line)/3),$line);
    foreach $codon (@triplas) {
        print "$codigogeneticopadrao{$codon}";
    }
print "\n\n";
}

__END__
atgcatccctttaat
tctgtctga

