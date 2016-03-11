## GitSynth

Turns Github commit messages into music.
 - Built on [Rails](http://rubyonrails.org/)(4.2).
 - Hits the Github API using [Octokit](https://github.com/octokit/octokit.rb).
 - Pulls all commit messages for specified repo. 
 - Turns each character into musical note.
 - Passes those notes through a [Timbre.js](https://mohayonao.github.io/timbre.js/) synth.
 - Uses [Semantic UI](http://semantic-ui.com/) for front-end.

### Musical note conversions:
 - `a4` = note & timing
 - `<>` = octave changes
 - `r` = rest
 - `&` = tie
 
```
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
      'r'  =>  'r'
    }
```