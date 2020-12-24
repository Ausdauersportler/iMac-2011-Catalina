# iMac-2011-Catalina

- Before you add these patches you need to use the dosdude1 Catalina patcher ➤ [the dosdude1 patcher](https://forums.macrumors.com/threads/macos-10-15-catalina-on-unsupported-macs.2183772/)
- Although @dosdude1 had all patches in place within his own pather he never changed the patch sets according to the needs of this particular iMac Mid 2011 system. Installing Catalina will remain a two step process, first install via the dosdude1 patcher, apply the patches of his patcher and after the final reboot download and load this patches.

### Fix sleeping panics in macOS Catalina 10.15++
- Support Graphics Intel HD 3000.
- Support of new AMD Polaris and NVIDIA Kepler modded iMac Systems 

#### Warnings:
##### 1 :this package replaces system files in /S/L/E and could render your system unbootable.
##### 2 :in case you sytem became unbootable just boot into recovery and enter first "kextcache -i /your boot volume path" and then "/your boot volume pat/usr/sbin/kcditto" in terminal (without using the marks).


#### How to download ready complete source and build the package

Just press on the Code button and select download zip. Within the zip there is a script called Package-Creator.command, just double click to buid the installer package from the sources.

This is a Fix for Graphics Intel HD 3000 and sleep on iMac 12,X for macOS Catalina 10.15.4 and later

Support Graphics Intel HD 3000 and Nvidia Kepler GPU and AMD Polaris/Ellesmere GPU

Within the Documents folder you will find pictures showing the package selection for each GPU type.

#### Installation selection for iMac systems with Kepler K610M, K1100M, and K2100M GPU:

This selection assumes the user will use OpenCore to enable brightness control.

![Modular Image Creation](https://github.com/Ausdauersportler/iMac-2011-Catalina/blob/main/Documentation/K610M-K1100M-K2100M.png)

#### Installation selection for iMac systems with AMD Polaris/Ellesmere GPU:

This selection assumes the user will use OpenCore to enable boot screen and AMD video acceleration (by spoofing the iMacPro1,1 board-id)

![Modular Image Creation](https://github.com/Ausdauersportler/iMac-2011-Catalina/blob/main/Documentation/CATALINA-SLEEP-PATCH-AMD.png)

#### Installation selection for iMac systems with other Kepler GPU:

This selection assumes no use of OpenCore at all. Installing FakeSMC is optional.

![Modular Image Creation](https://github.com/Ausdauersportler/iMac-2011-Catalina/blob/main/Documentation/CATALINA-SLEEP-PATCH-NVIDIA.png)

#### Installation selection for iMac systems with AMD Polaris/Ellesmere GPU (no iMacPro1,1 spoofing):

This selection assumes no use of the iMacPro1,1 board-id within the Platforminfo section of OpenCore

![Modular Image Creation](https://github.com/Ausdauersportler/iMac-2011-Catalina/blob/main/Documentation/CATALINA-SLEEP-PATCH-AMD-NO-OC.png)


#### Some more information:
[2011 iMac Graphics Card Upgrade](https://forums.macrumors.com/threads/2011-imac-graphics-card-upgrade.1596614/)

Installation of the FakeSMC package is optional. It is just needed to enable harware monitoring using the [HWMonitor app](https://github.com/kzlekk/HWSensors).

#### Installation details:
[Catalina Package Installer](https://forums.macrumors.com/threads/2011-imac-graphics-card-upgrade.1596614/page-421?post=29144691#post-29144691)

#### Credit:
- Fix/Patch: [dosdude1](https://forums.macrumors.com/members/dosdude1.669685/), [highvoltage12v](https://forums.macrumors.com/members/highvoltage12v.883629/)
- Tester: chris1111, [highvoltage12v](https://forums.macrumors.com/members/highvoltage12v.883629/), [Ausdauersportler](https://forums.macrumors.com/members/ausdauersportler.1199136/) 
- Packager: [Ausdauersportler](https://forums.macrumors.com/members/ausdauersportler.1199136/)
