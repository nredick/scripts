# Shell Scripts 
A collection of scripts to make life more fun (and easy). Clone the repository to use any of the scripts.

## Documentation
__Change the file permissions:__

```
chmod u=rwx ./msg.sh
chmod u=rwx ./fortune_msg.sh
chmod u=rwx ./serverlogin.sh
```
__Setting up aliases and symbolic links for scripts:__

*Session aliases:*
- Note the script path.
- These aliases will delete after your session ends.

```
alias msg=./msg.sh
alias fmsg=./fortune_msg.sh
alias login=./serverlogin.sh
```

*Permanent aliases:*
- add aliases to your shell source file

In zsh:
- Set up symbolic links to the files in /usr/local/bin:

```
cd /usr/local/bin/
ln -s  /absolute/path/to/msg.sh /absolute/path/to/msg.sh /absolute/path/to/serverlogin.sh
```
- Copy the aliases below:

```
alias msg=msg.sh
alias fmsg=fortune_msg.sh
alias login=serverlogin.sh
```
- Paste to your shell source file and save (:wq):

```
cd
vim .zshrc
```

- Reload the source file:

`source .zshrc`

## Repository Organization
__msg.sh__
A shell script that uses an osascript to send iMessages from the command line. (macIOS users only) 
The script takes two arguments, a message and a contact name from your Address Book (case sensitive).

`msg 'hello world!' 'Contact Name'`

Or, without alias:

`./msg.sh 'hello world!' 'Contact Name'`

__fortune_msg.sh__
A shell script that uses the [fortune](https://linux.die.net/man/6/fortune) command to send random quotations to someone in your Addresss Book. (macIOS users only) 
Takes one argument: a contact name from your Address Book (case sensitive).

`fmsg 'Contact Name'`

Or, without alias:

`./fortune_msg.sh 'hello world!' 'Contact Name'`

__serverlogin.sh__
A script to enter your username and password to ssh into a server. 
- Edit the file to match your credentials. Replace 'user@address' and 'yourpassword'

`login`

Or, without alias:

`./serverlogin.sh`

__/bckgrnd__
A program that automatically switches between two pictures at 07:00 and 15:00 everyday. To use, replace IMG1.jpeg (07 to 15) with the desired image (keep the name the same) and repeat for IMG2.jpeg (15 to 07)

then run the ./setup.sh file. 
