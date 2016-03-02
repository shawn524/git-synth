module GitsongsHelper
  def fuckingMUSIC(commits_arr)
    output = ""

    commits_string = commits_arr.join(' ')
    tempo = (commits_string.length / commits_arr.length) * 3

    output += "#{tempo.to_s} "

    alpha = {
      'a' => 'a',
      'h' => 'a1',
      'o' => 'a2',
      'w' => 'a3',
      'b' => 'b',
      'i' => 'b1',
      'p' => 'b2',
      'x' => 'b3',
      'c' => 'c',
      'j' => 'c1',
      'q' => 'c2',
      'y' => 'c3',
      'd' => 'd',
      'k' => 'd1',
      's' => 'd2',
      'z' => 'd3',
      'e' => 'e',
      'l' => 'e1',
      't' => 'e2',
      'f' => 'f',
      'm' => 'f1',
      'u' => 'f2',
      'g' => 'g',
      'n' => 'g1',
      'v' => 'g2',
      ' ' => '&'
    }
    commits_string.split('').each do |ltr|
      if alpha[ltr.downcase] 
        output += "#{alpha[ltr.downcase]} "
      end
    end

    output
  end
end
