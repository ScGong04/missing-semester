# How to use Shell Commands

## Streams 
Every program by default has two sterams: input stream and output stream.
By default input stream is out keyboard (thru terminal), and the output stream is where we see the output which is terminal.
### Outstream
'>' sets the output stream, defining where our output is going to be. Say we can do
```
echo hello > hello.txt
```
to place string "hello" to the txt file `hello.txt`.
### Input Stream
'<' in the other hand sets the input stream, defining where we take the input.
### Combining the Two Streams
Example
```
cat < hello.txt > hello2.txt
```
The first part of the command take `hello.txt` as the input of cat, and set the `hello2.txt` as the output. So hello2.txt will get the same value as hello.txt.

## Pipe
`|`: Take the output of the program on the left to be the input of the program on the right.
```
ls -l | tail -n 1
```
```
curl -head --silent google.com | grep - i content-length
```
`curl` Client URL, "browser" without GUI.
`--head` Just the header is needed (size, last modified, server, and other meta data)
`--silent` No need to display progress, warnings, and errors.
`grep` Look for
`-i` Case-insensitive
## '!' History Expansion
'!-n' can be used to represent the lines above

'!-n:$' Take the last parameter from the previous command
'!-n:1' Take the first parameter from the previous command
'!-n:-2' Take the second last parameter from the previous command

## Variables in Shell
In shell we can assign value to variable using `foo=bar` (note without any space)
```
$ echo "$(date +%s)" # %s is seconds since epoch
1536984661
$ echo $_ !$ "$(date +%s)" # don't hit enter until a few seconds pass
1536984661 1536984665 1536984665
```
## Operators in Shell

`A && B` B will only be executed if A is true (0)
`A || B` B will only be executed if A if false (1)
`A ; B` B will always be executed

### Dollar Sign
`$var` will expand this variable 'var'
`$()` will do command substituion and capture the `std_out` of the command.
`$0` the name of the script
`$n` the parameter in n-th position
`$#` the number of postional parameter
`$@` expand all positional parameters as separate words
`$*` exapnd all positional parameters as a single word
`$$` the pid of the shell
`$?` the exit status of the previous line
`$!` pid of the most recently executed command

## Conversion 
To convert file from `.png` to `.jpg` we can do
```
convert image.png image.jpg
or 
convert image.{png,jpg}
```
