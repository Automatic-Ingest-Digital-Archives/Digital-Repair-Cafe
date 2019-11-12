# DRC CheatSheet

## System
### Watch dmesg output
`watch "dmesg | fold -w$COLUMNS | tail -n$((LINES-2))"`

### create mountpount for device
```bash
sudo makedir /media/$user/$mountfolder
sudo mount /dev/$device /mount/$user/$mountfolder
```

## Tape drive

### Setup

#### check if tape device is connected

`lsscsi | grep tape`

#### set tape device as logical device 

(Must be done first) 

`mt -f /dev/nst0 stsetoptions scsi2logical`

#### check status of drive 
`tapeinfo -f /dev/nst0 ; mt -f /dev/nst0 status`

### Read

#### Show folder and get a basic overview of what is stored on the tape at record number ${n}

```bash
mt -f /dev/nst0 asf ${n}; #positon the tape to record number ${n}.
tar tvf /dev/nst0 2> /dev/null | head -n 1; #show only the first entry of the record.
```

#### Restore record number ${n}

```bash
cd  /tmp; #change to the destination folder.
mt -f /dev/nst0 asf ${n}; #position the tape to record number ${n}.
tar xvf /dev/nst0; #extract all files to the current folder.
```

#### To generate a list of all the files within a single record

```bash
mt -f /dev/nst0 asf ${n}; #positon the tape to record number ${n}.
tar tvf /dev/nst0 2> /dev/null > "/tmp/tape-record${n}.filelist.txt"
```

### Write

#### Create a backup/append a folder+files to the tape 

```bash
mt -f /dev/nst0 eod; #move tape past end of last record
tar -cvf /dev/nst0 /etc; #back up the '/etc' folder. change what folder you want as necessary.
```

### To overwrite an existing record

```bash
mt -f /dev/nst0 asf ${n}; #positon the tape to record number ${n}.
tar -cvf /dev/nst0 /etc; #backup the '/etc' folder.
```

### Delete

####  Erasing the tape

```bash
mt -f /dev/nst0 asf 0; #positon the tape to record number 0.
tar -cvf /dev/nst0 /dev/null; #write a null to record 0.
```

or `mt -f /dev/st0 erase` 

### Navigate

### Find out what block you are currently at

`mt -f /dev/st0 tell`

### Move to records on tape 

Go to end of data: `mt -f /dev/nst0 eod`

Go to previous record: `mt -f /dev/nst0 bsfm 1`

Forward record: `mt -f /dev/nst0 fsf 1`

### Rewind and eject the tape

```bash
mt -f /dev/nst0 rewind; #rewind the tape to the beginning.
mt -f /dev/nst0 eject; #eject the tape.
```

## Software

### Jaz

#### Jazip Software 0.34

Download the software via a copy of [Internet Archive](https://web.archive.org/web/20070923223044/http://www.scripps.edu/~jsmith/jazip/)

Edit the Jazip config via `nano /usr/sbin/jazipconfig`

#### ZIP SCSI & Linux Manual
https://www.tldp.org/HOWTO/text/Jaz-Drive-HOWTO
