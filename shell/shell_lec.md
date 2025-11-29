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
