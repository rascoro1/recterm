## recterm
Record the terminal into a mp4 with audio
### Normal Gif
![Demo](https://github.com/rascoro1/recterm/blob/master/github.gif)



#### Youtube video created using recterm
[![IMAGE ALT TEXT HERE](https://github.com/rascoro1/recterm/blob/master/youtube_screen_shot.png)](https://www.youtube.com/watch?v=K-b_44KZ4n4)

### Motivation

The [`asciinema`] tool is a wonderful way to record and share terminal sessions and [`asciinema2gif`] is a awesome way to turn them into gifs. However I would like to record videos of the terminal that include audio so giving an email of instuctions using mp4 would be the best way for me.

### Usage

```bash
$ recterm <outputname-do not include the .mp4>
```

Example:

```bash
$ recterm test_terminal_session
```
The .wav and .mp4 file will be generated in the 'test_terminal_session' directory. In your current working directy the final .mp4 will be present with the file name test_terminal_session.mp4

### Requirements

#### OS X

```bash
# Requires Homebrew installed. Find it at http://brew.sh/.
# This command will install asciinema2gif and all dependencies.
brew install asciinema
npm install --global asciicast2gif
brew install sox
brew install ffmpeg
```

#### Ubuntu

```bash
apt-get install brew install asciinema
apt-get install imagemagick gifsicle npm
npm install --global phantomjs2
apt-get install sox
apt-get install ffmpeg
```

```
If you are having difficulty installing recterm please follow the guide:
http://linoxide.com/linux-how-to/recterm-record-videos-audio-linux-terminal/
```

### Credits

* [@rascoro1]

### License

Apache.


[`asciinema`]: https://asciinema.org/
[`asciinema2gif`]: https://github.com/tav/asciinema2gif/
[asciinema terminal recordings]: https://asciinema.org/
[@rascoro1]: https://github.com/rascoro1/
