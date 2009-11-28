require 'lib/cripto.rb'
require 'spec'

describe Cripto do
  before(:each) do
    @dicionario = {
    'a' => 'b',
    'b' => 'c',
    'c' => 'd',
    'd' => 'e',
    'e' => 'f',
    'f' => 'g',
    'g' => 'h',
    'h' => 'i',
    'i' => 'j',
    'j' => 'k',
    'k' => 'l',
    'l' => 'm',
    'm' => 'n',
    'n' => 'o',
    'o' => 'p',
    'p' => 'q',
    'q' => 'r',
    'r' => 's',
    's' => 't',
    't' => 'u',
    'u' => 'v',
    'v' => 'w',
    'w' => 'x',
    'x' => 'y',
    'y' => 'z',
    'z' => 'a',

    'A' => 'B',
    'B' => 'C',
    'C' => 'D',
    'D' => 'E',
    'E' => 'F',
    'F' => 'G',
    'G' => 'H',
    'H' => 'I',
    'I' => 'J',
    'J' => 'K',
    'K' => 'L',
    'L' => 'M',
    'M' => 'N',
    'N' => 'O',
    'O' => 'P',
    'P' => 'Q',
    'Q' => 'R',
    'R' => 'S',
    'S' => 'T',
    'T' => 'U',
    'U' => 'V',
    'V' => 'W',
    'W' => 'X',
    'X' => 'Y',
    'Y' => 'Z',
    'Z' => 'A',
   
    ' ' => '.',
    '.' => ' ',
    }
  end
    
  describe 'Criptografa' do
    it 'deve mostrar o dicionario' do
      cripto = Cripto.new
      cripto.dicionario.should == @dicionario
    end
    
    it "deve criptografar uma string" do
      Cripto.new("Dojo").cripto.should == "Epkp"
      Cripto.new("Dado").cripto.should == "Ebep"
      Cripto.new("Dojo Dado").cripto.should == "Epkp.Ebep"
    end
    
    it "deve nao substituir caracteres fora do dicionario" do
       Cripto.new("Dado!?#").cripto.should == "Ebep!?#"
    end
    
  end
  
  describe 'Descriptografar' do
    it 'descriptografar a string' do
      Cripto.new("Epkp").decript.should == "Dojo"
      Cripto.new("Ebep").decript.should == "Dado"
      Cripto.new("Epkp.Ebep").decript.should == "Dojo Dado"
    end
    
    it "deve nao substituir caracteres fora do dicionario" do
       Cripto.new("Ebep!?#").decript.should == "Dado!?#"
    end
  end
end

