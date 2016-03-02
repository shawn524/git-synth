module GitsongsHelper
  def fuckingMUSIC(commits_arr)
    output = ""

    commits_string = commits_arr.join(' ')
    tempo = (commits_string.length / commits_arr.length) * 3

    output += "t#{tempo.to_s} "

    def rand_space
      ['&','<','>','[',']'].sample
    end

    alpha = {
      'a' => 'a4',
      'h' => '<a2>',
      'o' => '<<a8.5>>',
      'w' => '<<<a8>>>',
      'b' => 'b4',
      'i' => '<b2>',
      'p' => '<<b8.5>>',
      'x' => '<<<b8>>>',
      'c' => 'c4',
      'j' => '<c2>',
      'q' => '<<c8.5>>',
      'y' => '<<<c8>>>',
      'd' => 'd4',
      'k' => '<d2>',
      's' => '<<d8.5>>',
      'z' => '<<<d8>>>',
      'e' => 'e4',
      'l' => '<e2>',
      't' => '<<e8.5>>',
      '.' => '<<<e8>>>',
      'f' => 'f4',
      'm' => '<f2>',
      'u' => '<<f8.5>>',
      ','  => '<<<f8>>>',
      'g' => 'g4',
      'n' => '<g2>',
      'v' => '<<g8.5>>',
      '!'  => '<<<g8>>>',
      ' ' => '&',
      '?'  => '|',
    }
    commits_string.split('').each do |ltr|
      if alpha[ltr.downcase] 
        output += "#{alpha[ltr.downcase]} "
      end
    end

    output
  end
end
