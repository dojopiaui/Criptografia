class Cripto

  def initialize(string = "")
    @string = string
  end
  
  def cripto
    @string_criptografada = ''
    @string.each_char do |s|
      if dicionario[s] == nil
        @string_criptografada << s
      else
        @string_criptografada << dicionario[s]
      end
    end
    @string_criptografada
  end

  def decript
    @string_descriptografada = ''
    @string.each_char do |ch|
      if dicionario.value? ch
        dicionario.each_pair do |key,value|
          @string_descriptografada << key if value == ch
        end
      else
        @string_descriptografada << ch
      end
    end
    @string_descriptografada
  end

  def dicionario
    {
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

    '.' => ' ',
    ' ' => '.',
    }
  end
end
