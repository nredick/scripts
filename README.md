# Shell scripts 
A collection of scripts to make life more fun (and easy). Clone the repository to use any of the scripts.

## Documentation
*Setting up aliases and symbolic links for scripts:*

__Session aliases:__
- Note the script path.
- These aliases will delete after your session ends.
```
alias msg=./msg.sh
alias fmsg=./fortune_msg.sh
alias login=./serverlogin.sh
```

__Permanent aliases:__
- add aliases to your shell source file

In zsh:
- Set up symbolic links to the files in /usr/local/bin:
```
cd /usr/local/bin/
ln -s  /absolute/path/to/msg.sh /absolute/path/to/msg.sh /absolute/path/to/serverlogin.sh 
```
- Copy/paste the aliases below to your shell source file and save (:wq):
>alias msg=msg.sh

>alias fmsg=fortune_msg.sh

>alias login=serverlogin.sh

```
cd
vim /.zshrc
```
- Reload the source file: 
```
source /.zshrc
```

## Repository Organization
__msg.sh__
A shell script that uses an osascript to send iMessages from the command line. (macIOS users only) 
The script takes two arguments, a message and a contact name from your Address Book (case sensitive).
```
msg 'hello world!' 'Contact Name'
```
Or, without alias:
```
./msg.sh 'hello world!' 'Contact Name'
```

__fortune_msg.sh__
A shell script that uses the [fortune](https://linux.die.net/man/6/fortune) command to send random quotations to someone in your Addresss Book. (macIOS users only) 
Takes one argument: a contact name from your Address Book (case sensitive).
```
fmsg 'Contact Name'
```
Or, without alias:
```
./fortune_msg.sh 'hello world!' 'Contact Name'
```

__serverlogin.sh__
A script to enter your username and password to ssh into a server. 
- Edit the file to match your credentials. Replace 'user@address' and 'yourpassword'
```
login
```
Or, without alias:
```
./serverlogin.sh
```
