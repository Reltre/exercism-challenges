module Complement

  DNA_NUCLEOTIDES = "GCTA"
  RNA_NUCLEOTIDES = "CGAU"
  
  def self.of_dna(dna)
    if not_dna?(dna)
      raise ArgumentError,"#{dna} is not a valid dna sequence. Your
      sequence must only contain these nucleotides: #{DNA_NUCLEOTIDES}" 
    end
    dna.tr(DNA_NUCLEOTIDES,RNA_NUCLEOTIDES)
  end

  def self.not_dna?(dna)
    dna !~ /[#{DNA_NUCLEOTIDES}]/
  end

  def self.of_rna(rna)
    if not_rna?(rna) 
      raise ArgumentError,"#{rna} is not a valid rna sequence. Your
      sequence must only contain these nucleotides: #{RNA_NUCLEOTIDES}"
    end
    rna.tr(RNA_NUCLEOTIDES,DNA_NUCLEOTIDES)
  end


  def self.not_rna?(rna)
    rna !~ /[#{RNA_NUCLEOTIDES}]/
  end
=begin
  def method_missing(method, arg)
    dna_or_rna = method[3,3]
    if send("not_#{dna_or_rna}",arg)
      raise ArgumentError,"#{dna_or_rna} is not a valid rna sequence. Your
      sequence must only contain these nucleotides: #{RNA_NUCLEOTIDES}"
    end

    arg.tr(const_get("#{dna_or_rna.upcase}NUCLEOTIDES")
  end
=end
end
