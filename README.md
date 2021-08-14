# Wind_Vane_Synthesize
Synthesize music Wind Vane by MATLAB. 

This project synthesize a part of guitar duet music, Wind Vane, by MATLAB. Codes are included in ```mcodes```. ```WindVane.mp4``` is the result. It sounds not good :(. Comments are detailed in codes and there is also a README file in mcodes fold. 

这个项目使用MATLAB合成了一段吉他二重奏乐曲《风向标》。```mcodes.mp4```中包含了所有需要用到的代码。```WindVane.mp4```是结果，它不是很好听:(。 代码中有详尽的注释，且mcodes文件夹中同样包含了一份README文件介绍。

README in mcodes fold: 
## mcodes of Wind_Vane_Synthesize

This fold includes all .m codes needed. Just run WindVane.m and get a result. 

### WindVane.m 

The music is a duet, so there are 2 parts of guitar sound, Rhythm part and Melody part, to combine. 
This file gets 2 parts from 2 other functions, ```Rhythm()``` and ```Melody()```, and combine them 
to a result. Then it plays and saves the result. 

### Melody.m and Rhythm.m 

Take Melody.m for example since these 2 codes are very similar. The file is consists of the function 
```Melody()```. The function has 3 missions. First, getting notes of different pitch and different 
timespan from function ```Tone()```, specifying style of instrument(Guitar played Melody in this file) 
and range of tone(From C3 to C7 in this file). Second, 
storing the music sheet and making use of notes mentioned above to join to a section. Third, connect 
all sections to a music part, thata is ```MelodPart```. Rhythm.m plays a similar role, just replace 
melody by rhythm. 

### Tone.m 
This file consists of the function ```Tone()```. It receives a function handle, ```Type```, to get the 
message of style of instrument, and the range of pitch. It return several matrices. Each matrix 
stands for the corresponding notes list of the same timespan. And each row in the matrix stands for 
the note of corresponding pitch with the timespan. Blank notes of the same timespan are also created 
and returned. 

Take Melody part for example. Function ```Tone()``` receives the function handle of ```GuitarMe()``` 
and returns notes of Guitar Melody style. 

### GuitarMe.m and GuitarRy.m 
Similarly, take GuitarMe.m for example. ```Guitar()``` records the timbre and the changing amplitude 
of guitar played melody part. Then the function receives specified pitch(or frequency) and timespan 
of desired note and then, creates and return the note. The note is actually a digital function, 
which can be played and saved by MATLAB. ```GuitarRy()``` is similar, only replace a different timbre 
and a different amplitude function. 

### Fork.m 
```Fork()``` contains a standard instrument style, tuning fork. This style, or function, can be easily 
used by ```Tone()``` function. Just replace ```@GuitarMe```, the function handle of ```GuitarMe()``` 
or ```@GuitarRy``` by ```@Fork``` without any other modifications. 

中文README： 
委屈读者先看英文了QAQ。 



