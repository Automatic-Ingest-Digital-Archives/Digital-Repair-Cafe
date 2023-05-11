# Optical discs

## Hardware

### BluRay drive

A BluRay disc had some advantages over other optical disc drives. It's compabible with almost all kinds of optical discs ([source](https://en.wikipedia.org/wiki/Optical_disc_drive#Compatibility))

|**Model**|[ASUS SBC-06D2X-U](https://web.archive.org/web/20200204152726/https://www.asus.com/be-nl/Optical-Drives-Storage/SBC06D2XU/overview/) |
|:--|:--|
|**Media**|CD-ROM<br>CD-R<br>CD-RW<br>DVD-ROM<br>DVD-R<br>DVD-RW<br>DVD+R<br>DVD+RW<br>Fujifilm Photodisc|
|**Interface**|[USB](https://www.wikidata.org/wiki/Q42378)|
|**Connector**|USB 2.0|
|**Cable**|to check|
|**Workstation connection**|Can be connected directly with write blocker|
|**Power**| n/a USB power |
|**Documentation**| |

### Write blocker

|**Model**|[Tableau Forensic USB 3.0 Bridge T8U](https://web.archive.org/web/20180409191526/https://www.guidancesoftware.com/tableau/hardware//t8u) ![blocker](images/blocker.jpg)|
|:--|:--|
|**Media**|Drives with USB (3.0 and older) connectors|
|**Interface**|[USB](https://www.wikidata.org/wiki/Q42378)|
|**Connector**|USB 3.0|
|**Cable**|[USB type B to USB type A](https://commons.wikimedia.org/wiki/Category:USB_cables?uselang=nl#/media/File:A-B_Usb_Cable.jpg)<br>![USB](images/USB-3.jpg)|
|**Workstation connection**|Can be connected directly with workstation (which has a USB type A female connection|
|**Power**| DC input: 5-pin Mini-DIN connector ![connector](images/power-5-pin.jpg)|
|**Documentation**| |

### Workstation

A Linux computer, preferably running the [Bitcurator Environment](https://bitcurator.net/) (We use a Dell XPS)

## Software

[Guymager](https://guymager.sourceforge.io/) in the [Bitcurator Environment](https://bitcurator.net/)

## Workflow

### Step 1: Connect the write blocker to the workstation

1. Connect the write blocker to the workstation using the blue USB 3.0 cable (Host USB 3.0)
2. Connect the DC power supply to the write blocker (bottom)
3. Plug the power cable into a power socket
4. Press the power button on the write blocker

### Step 2: Connect the BluRay Drive to the write blocker

Connect the BluRay Drive to the write blocker using the USB cable (Device USB 3.0)

### Step 3: Create a disk image

1. Take an optical disc and insert it in the BluRay Drive
2. [Create a disk image using Guymager](guymager.md)
3. If Guymager can't find the disc, remove the write blocker from the setup and directly connect the blu-ray drive to the workstation with the USB cable.

### Step 5: Eject the disc

Eject the disc from the drive by pressing the button on the drive. 
