#!/bin/bash
# script for Installer iMac-2011-Sleep-patch Catalina
# By chris1111 and Ausdauersportler
PARENTDIR=$(dirname "$0")
cd "$PARENTDIR"

# shell script Notifications
osascript -e 'display notification "Installer iMac-Sleep-patch" with title "Create"  sound name "default"'

rm -rf ./iMac2011Sleep-patch
rm -rf ./iMac-Sleep-patch.pkg
rm -rf /tmp/PackageDIR
Sleep 1
mkdir -p ./iMac2011Sleep-patch
mkdir -p ./iMac2011Sleep-patch/BUILD-PACKAGE
mkdir -p /tmp/PackageDIR

# Create the Packages with pkgbuild

# High Sierra AppleGVA enabled iGPU on iMac 12,x
pkgbuild --root ./GPUFramework --identifier de.mtb11.iMac2011SleepPatch.GPUFramework.pkg --version 1 --install-location /tmp ./iMac2011Sleep-patch/BUILD-PACKAGE/GPUFramework.pkg

# enables iGPU and Backlight Management on NVIDIA and AMD HW acceleration on AMD systems
pkgbuild --root ./VIT9696 --identifier de.mtb11.iMac2011SleepPatch.VIT9696.pkg --version 1 --install-location /tmp ./iMac2011Sleep-patch/BUILD-PACKAGE/VIT9696.pkg

# enables sleep on AMD iMacPro1,1 spoofed systems
pkgbuild --root ./AMD --identifier de.mtb11.iMac2011SleepPatch.AMD.pkg --version 1 --install-location /tmp ./iMac2011Sleep-patch/BUILD-PACKAGE/AMD.pkg

# enables wide range backlight control with NVIDIA cards not needing OpenCore for backlight control
pkgbuild --root ./AppleBacklightFixup --identifier de.mtb11.iMac2011SleepPatch.AppleBacklightFixup.pkg --version 1 --install-location /tmp ./iMac2011Sleep-patch/BUILD-PACKAGE/AppleBacklightFixup.pkg

# enables sensor monitoring with HWMonitor
pkgbuild --root ./FakeSMC --identifier de.mtb11.iMac2011SleepPatch.FakeSMC.pkg --version 1 --install-location /tmp ./iMac2011Sleep-patch/BUILD-PACKAGE/FakeSMC.pkg

# High Sierra HD3000 and IntelSNB files to enably sleep on iMac 12,x
pkgbuild --root ./HD3000 --identifier de.mtb11.iMac2011SleepPatch.HD3000.pkg --version 1 --install-location /tmp ./iMac2011Sleep-patch/BUILD-PACKAGE/HD3000.pkg

# add ons for sleep on Catalina with iMac 12,x
pkgbuild --root ./CAT --identifier de.mtb11.iMac2011SleepPatch.CAT.pkg --version 1 --install-location /tmp ./iMac2011Sleep-patch/BUILD-PACKAGE/CAT.pkg

# main (shell) package
pkgbuild --root ./Install --scripts ./Script --identifier de.mtb11.iMac2011SleepPatch.Install.pkg --version 1.0 --install-location /tmp ./iMac2011Sleep-patch/BUILD-PACKAGE/Install.pkg

Sleep 2
# Expand the Packages with pkgutil
pkgutil --expand ./iMac2011Sleep-patch/BUILD-PACKAGE/GPUFramework.pkg /tmp/PackageDIR/gpuframework.pkg
pkgutil --expand ./iMac2011Sleep-patch/BUILD-PACKAGE/HD3000.pkg /tmp/PackageDIR/HD3000.pkg
pkgutil --expand ./iMac2011Sleep-patch/BUILD-PACKAGE/AMD.pkg /tmp/PackageDIR/AMD.pkg
pkgutil --expand ./iMac2011Sleep-patch/BUILD-PACKAGE/CAT.pkg /tmp/PackageDIR/CAT.pkg
pkgutil --expand ./iMac2011Sleep-patch/BUILD-PACKAGE/FakeSMC.pkg /tmp/PackageDIR/FakeSMC.pkg
pkgutil --expand ./iMac2011Sleep-patch/BUILD-PACKAGE/AppleBacklightFixup.pkg /tmp/PackageDIR/AppleBacklightFixup.pkg
pkgutil --expand ./iMac2011Sleep-patch/BUILD-PACKAGE/VIT9696.pkg /tmp/PackageDIR/VIT9696.pkg
pkgutil --expand ./iMac2011Sleep-patch/BUILD-PACKAGE/Install.pkg /tmp/PackageDIR/install.pkg

Sleep 2
# Copy resources and distribution
cp -r ./Resources/Distribution /tmp/PackageDIR
cp -r ./Resources/Resources /tmp/PackageDIR
Sleep 5
# Flatten the Packages with pkgutil
pkgutil --flatten /tmp/PackageDIR ./iMac-Sleep-patch.pkg


