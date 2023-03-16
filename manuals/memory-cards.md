## Hardware

### Card reader

|**Model**|Aluminium alloy 6 in 1 3.0 Super speed Card Reader|
|:--|:--|
|**Media**|Different flavours of [Sony Memory Stick](https://www.wikidata.org/wiki/Q733906)<br>Sony Memory Stick Micro (M2)<br>[SD cards](https://www.wikidata.org/wiki/Q466977), also [SDHC](https://www.wikidata.org/wiki/Q877443) and [SDXC](https://www.wikidata.org/wiki/Q17239567)<br>[Micro SD](https://www.wikidata.org/wiki/Q482531)<br>
[Compact Flash (CF)](https://www.wikidata.org/wiki/Q678615)|
|**Interface**|[USB](https://www.wikidata.org/wiki/Q42378)|
|**Connector**|USB 3.0|
|**Cable**|Micro USB 3.0 to USB 3.0 type A|
|**Workstation connection**|Use write blocker|
|**Power**| n/a |
|**Documentation**| |

### Write blocker

|**Model**|[Tableau Forensic USB 3.0 Bridge T8U](https://web.archive.org/web/20180409191526/https://www.guidancesoftware.com/tableau/hardware//t8u) ![blocker](images/blocker.jpg)|
|:--|:--|
|**Media**|Drives with USB 3.0 and older connectors|
|**Interface**|[USB](https://www.wikidata.org/wiki/Q42378)|
|**Connector**|USB 3.0|
|**Cable**|[USB type B to USB type A](https://commons.wikimedia.org/wiki/Category:USB_cables?uselang=nl#/media/File:A-B_Usb_Cable.jpg)|
|**Workstation connection**|Can be connected directly with workstation (which has a USB type A female connection|
|**Power**| DC input: 5-pin Mini-DIN connector|
|**Documentation**| [user guide](https://web.archive.org/web/20230308061552/https://manuals.plus/opentext/t8u-tableau-forensic-usb-bridge-manual) |

### Workstation

A Linux computer, preferably running the [Bitcurator Environment](https://bitcurator.net/) (We use a Dell XPS)

## Software

[Guymager](https://guymager.sourceforge.io/) in the [Bitcurator Environment](https://bitcurator.net/)

## Workflow

### Step 1: Connect the write blocker to the workstation

1. Connect the write blocker to the workstation using the blue USB 3.0 cable
2. Connect the DC power supply to the write blocker and plug the power cable into a  socket
3. Press the power button on the write blocker

### Step 2: Connect the Card Reader to the write blocker

Connect the Card Reader to the write blocker using the USB cable

### Step 3: Prepare the memory card (only SD cards)

SD cards (SD/SDHC/SDXC) have a slider to put the card in read-onlys state. Slide it down and the SD card is in read-only state.

### Step 4: Create a disk image

1. Insert the memory card into the correct slot
2. [Create a disk image using Guymager](guymager.md)

### Step 5: remove the memory card

1. Pull the memory card out of the slot
2. When you're finished, remove the Card Reader from the write blocker.