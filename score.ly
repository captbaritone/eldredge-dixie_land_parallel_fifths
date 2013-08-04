 \version "2.10.10"
     global = {
        \key c \major
        \time 4/4
        \set Staff.midiInstrument = "alto sax"
		\partial 4
     }
    
     tenorMusic = \relative c {
		e4 
		| f g a b 
		| c2 d2 
		| e1\bar "||"
     }
     leadMusic = \relative c {
		e4 
		| f g a b 
		| c2 c2 
		| c1\bar "||"
     }
     
     leadWords =\lyricmode {
     	In Dix -- ie Land where I was born.
     }
     bariMusic = \relative c {
    	c4 
		| d e f g 
		| a2 aes2 
		| g1\bar "||"
     }
     
     bassMusic = \relative c {
    	c4 
		| d e f g 
		| f2 f2 
		| c1\bar "||"
     }
    
     \header {
		title = "Parallel Fifths: In Dixie Land Where I Was Born"
		composer = "Burt Szabo"
		arranger = "Jordan Eldredge"
	 }

     \score  { <<		
		    \new ChoirStaff << 
			\new Staff = tenorStaff <<
				\clef "G_8"
				\new Voice = "tenors" { \voiceOne <<	\global \transpose c g \tenorMusic >> }
				\new Voice = "leads" { \voiceTwo << 	\global \transpose c g \leadMusic >> }
			>>
			\new Lyrics = "leads" { s1 }
			\new Staff = tenorStaff <<
				\clef bass
              	\new Voice = "baris" { \voiceOne <<  	\global \transpose c g \bariMusic >> }
                \new Voice = "basses" { \voiceTwo << 	\global \transpose c g \bassMusic >> }
           >>
           \context Lyrics = leads \lyricsto leads \leadWords
        >>
        \new ChoirStaff <<
			\new Staff = tenorStaff <<
				\clef "G_8"
				\new Voice = "tenors" { \voiceOne <<  \global \tenorMusic >> }
				\new Voice = "leads" { \voiceTwo << \global \leadMusic >> }
			>>
			\new Lyrics = "leads" { s1 }
			\new Staff = tenorStaff <<
				\clef bass
              	\new Voice = "baris" { \voiceOne <<  \global \bariMusic >> }
                \new Voice = "basses" { \voiceTwo << \global \bassMusic >> }
           >>
           \context Lyrics = leads \lyricsto leads \leadWords
        >>
     >> 
     \layout {

        }
		\midi {
			\context {
				\Score
			}
		}
	}
     
     
