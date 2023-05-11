# Magneto-Optical Discs

## Hardware

### M.O. drive

|**Model**|[Fujitsu DynaMO 1300U2 Pocket MDK3130UB](https://web.archive.org/web/20060321071446/http://www.fujitsu.com/global/services/computing/storage/mo/dynamo1300u2pocket/) ![DynaMO 1300U2](images/MO-13000.jpg)|
|:--|:--|
|**Media**|3.5 inch M.O. disc 128 MB<br>3.5 inch M.O. disc 230 MB<br>3.5 inch M.O. disc 540 MB<br>3.5 inch M.O. disc 640 MB<br>3.5 inch M.O. disc 1.3 GB|
|**Interface**|[USB](https://www.wikidata.org/wiki/Q42378)|
|**Connector**|USB 1.1 or 2.0|
|**Cable**|[USB mini B to USB type A](https://commons.wikimedia.org/wiki/File:USB_Mini-B_and_Standard-A_plugs.jpg)<br>![USB](images/USB-B.jpg)|
|**Workstation connection**|Can be connected directly with write blocker (which has a USB type A female connection)|
|**Power**| n/a |
|**Documentation**| |

### Write blocker

|**Model**|[Tableau Forensic USB 3.0 Bridge T8U](https://web.archive.org/web/20180409191526/https://www.guidancesoftware.com/tableau/hardware//t8u) ![blocker](images/blocker.jpg)|
|:--|:--|
|**Media**|Drives with USB (3.0 and older) connectors|
|**Interface**|[USB](https://www.wikidata.org/wiki/Q42378)|
|**Connector**|USB 3.0|
|**Cable**|![USB](images/USB-3.jpg)|
|**Workstation connection**|Can be connected directly with workstation (which has a USB type A female connection|
|**Power**| DC input: 5-pin Mini-DIN connector ![connector](images/power-5-pin.jpg)|
|**Documentation**| [user guide](https://web.archive.org/web/20230308061552/https://manuals.plus/opentext/t8u-tableau-forensic-usb-bridge-manual) |

### Workstation

A Linux computer, preferably running the [Bitcurator Environment](https://bitcurator.net/) (We use a Dell XPS)

## Software

[Guymager](https://guymager.sourceforge.io/) in the [Bitcurator Environment](https://bitcurator.net/)

## Workflow

### Step 1: Connect the write blocker to the workstation

1. Connect the write blocker to the workstation using the blue USB 3.0 cable
2. Connect the DC power supply to the write blocker
3. Plug the power cable into a power socket
4. Press the power button on the write blocker

### Step 2: Connect the M.O. Drive to the write blocker

Connect the M.O Drive to the write blocker using the USB cable

### Step 3: Prepare the M.O. disc

1. Take a M.O. disc
2. Slide the switch on the disc bringing it in read-only state. Look for a tiny sliding tab in a square hole in the disc's lower left corner. Slide the tab with a pencil or your thubmnail so that the hole is uncovered.

### Step 4: Create a disk image

1. Insert the M.O. disc in the M.O. Drive
2. [Create a disk image using Guymager](guymager.md)

### Step 5: Eject the disc

1. Press on the button of the M.O. Drive to eject the disc
2. If that doesn't work:
   1. Go to the workstation and open a file explorer window 
   2. Right click on the device in the left navigation sidebar
   3. Select eject
   4. Press again on the button of the M.O. drive
3. If that doesn't work either:
   1. Power off the write blocker
   2. Power on the write blocker
   3. Immediately press on the button of the M.O. drive to eject the M.O. disc.
