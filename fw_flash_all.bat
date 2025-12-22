@echo off
:: Force path to script directory
cd /d "%~dp0"
title Fastboot_Flasher

:: Check platform-tools
if exist "platform-tools\fastboot.exe" (
    set FB="platform-tools\fastboot.exe"
) else (
    set FB=fastboot
)

echo ===================================
echo STEP 1: Checking Device...
%FB% devices
echo ===================================

echo STEP 2: Rebooting to Fastbootd...
%FB% reboot fastboot

echo Waiting 10s for driver loading...
timeout /t 10

echo ===================================
echo STEP 3: Flashing Images...
%FB% flash --slot=all abl abl.img
%FB% flash --slot=all aop_config aop_config.img
%FB% flash --slot=all aop aop.img
%FB% flash --slot=all bluetooth bluetooth.img
%FB% flash --slot=all cpucp cpucp.img
%FB% flash --slot=all cpucp_dtb cpucp_dtb.img
%FB% flash --slot=all devcfg devcfg.img
%FB% flash --slot=all dsp dsp.img
%FB% flash --slot=all engineering_cdt engineering_cdt.img
%FB% flash --slot=all featenabler featenabler.img
%FB% flash --slot=all hyp hyp.img
%FB% flash --slot=all imagefv imagefv.img
%FB% flash --slot=all keymaster keymaster.img
%FB% flash --slot=all modem modem.img
%FB% flash --slot=all oplus_sec oplus_sec.img
%FB% flash --slot=all oplusstanvbk oplusstanvbk.img
%FB% flash --slot=all qupfw qupfw.img
%FB% flash --slot=all shrm shrm.img
%FB% flash --slot=all splash splash.img
%FB% flash --slot=all tz tz.img
%FB% flash --slot=all uefi uefi.img
%FB% flash --slot=all uefisecapp uefisecapp.img
%FB% flash --slot=all xbl_config xbl_config.img
%FB% flash --slot=all xbl_ramdump xbl_ramdump.img
%FB% flash --slot=all xbl xbl.img

echo ===================================
echo DONE! Rebooting...
%FB% reboot
pause