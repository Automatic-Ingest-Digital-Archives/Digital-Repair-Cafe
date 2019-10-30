# DRC CheatSheet

### System
#### Watch dmesg output
`watch "dmesg | fold -w$COLUMNS | tail -n$((LINES-2))"`

#### create mountpount 
`sudo makedir /media/$user/mountfolder`
`sudo mount /dev/device /mount/$user/mountfolder`

### check tape device is visible
`lsscsi | grep tape`

#### set tape device as logical device 
(Must be done first) 
`mt -f /dev/nst0 stsetoptions scsi2logical`

#### check status van drive 
`tapeinfo -f /dev/nst0 ; mt -f /dev/nst0 status`

#### Make a backup/append a folder+files to the tape 
`mt -f /dev/nst0 eod; #move tape past end of last record`
`tar -cvf /dev/nst0 /etc; #back up the '/etc' folder. change what folder you want as necessary.`

#### To show the folder and get a basic overview of what is stored on the tape at record number 0
`mt -f /dev/nst0 asf 0; #positon the tape to record number 0.`
`tar tvf /dev/nst0 2> /dev/null | head -n 1; #show only the first entry of the record.`

#### As another example, to show record #2
`mt -f /dev/nst0 asf 2; #positon the tape to record number 2.`
`tar tvf /dev/nst0 2> /dev/null | head -n 1; #show only the first entry of the record.`

#### Restore the first record (record 0)
`cd  /tmp; #change to the destination folder.`
`mt -f /dev/nst0 asf 0; #position the tape to record number 0.`
`tar xvf /dev/nst0; #extract all files to the current folder.`

#### To generate a list of all the files within a single record 
`mt -f /dev/nst0 asf 0; #positon the tape to record number 0.`
`tar tvf /dev/nst0 2> /dev/null > /tmp/tape-record0.filelist.txt`

### To overwrite an existing record (record #2 in this example)
`mt -f /dev/nst0 asf 2; #positon the tape to record number 2.`
`tar -cvf /dev/nst0 /etc; #back up the '/etc' folder.`

###  Erasing the tape
`mt -f /dev/nst0 asf 0; #positon the tape to record number 0.`
`tar -cvf /dev/nst0 /dev/null; #write a null to record 0.`
or
`mt -f /dev/st0 erase` 

### to rewind and eject the tape
`mt -f /dev/nst0 rewind; #rewind the tape to the beginning.`
`mt -f /dev/nst0 eject; #eject the tape.`

### find out what block you are currently at
`mt -f /dev/st0 tell`

### Move to records on tape 
Go to end of data
`mt -f /dev/nst0 eod`
Goto previous record
`mt -f /dev/nst0 bsfm 1`
 Forward record
 `mt -f /dev/nst0 fsf 1`


### Software
#### Jazip Software 0.34
`https://web.archive.org/web/20070923223044/http://www.scripps.edu/~jsmith/jazip/`
`/usr/sbin/jazipconfig`

#### ZIP SCSI & Linux Manual
https://www.tldp.org/HOWTO/text/Jaz-Drive-HOWTO


