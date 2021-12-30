# Device Tree for Nokia 8 (Treble)

The Nokia 8 is a high-end Nokia-branded smartphone running the Android operating system
Announced on 16 August 2017 in London, England by HMD Global,[4][5] the phone began sales in Europe in September 2017.

| Basic                   | Spec Sheet                                                                                                                     |
| -----------------------:|:------------------------------------------------------------------------------------------------------------------------------ |
| CPU                     | Octa-core (4x2.5 GHz Kryo & 4x1.8 GHz Kryo)                                                                           |
| Chipset                 | Qualcomm MSM8998 Snapdragon 835 (10 nm)                                                                                                 |
| GPU                     | Adreno 540                                                                                                                     |
| Memory                  | 4/6 GB RAM                                                                                                                     |
| Shipped Android Version | Android 7.1.1                                                                                                                            |
| Last Android Version    | Android 9.0                                                                                                                            |
| Storage                 | 64/128 GB                                                                                                                          |
| Battery                 | Non-removable Li-Ion 3090 mAh battery                                                                                           |
| Display                 | 1440 x 2560 pixels, 16:9 ratio (~554 ppi density)                                                                              |
| Camera (Back)           | 13 MP, f/2.0, 1/3.1", 1.12µm, PDAF, Laser AF, OIS                                                                              |
| Camera (Front)          | 13 MP, f/2.0, (wide), 1/3.1", 1.12µm, PDAF                                                                                                    |

## Device picture

![Nokia 8](https://static.wikia.nocookie.net/hmd_nokia/images/f/f1/Nb1.png/revision/latest?cb=20200529024823)

## Kernel

Kernel source:
https://github.com/GPUCode/android_kernel_nokia_msm8998

## Compile

First repo init the TWRP 11 tree:

```
mkdir ~/android/twrp-11
cd ~/android/twrp-11
repo init -u git://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-11
```

Then add to a local manifest (if you don't have .repo/local_manifest then make that directory and make a blank file and name it something like twrp.xml):

```xml
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
  <project name="osm0sis/twrp_abtemplate" path="bootable/recovery/installer" remote="github" revision="master"/>
  <project name="GPUCode/android_device_nokia_NB1-TWRP" path="device/nokia/NB1" remote="github" revision="android-11"/>
  <project name="GPUCode/android_kernel_nokia_msm8998" path="kernel/nokia/msm8998" remote="github" revision="twelve"/>
</manifest>
```

Now you can sync your source:

```
repo sync
```

To automatically make the twrp installer, you need to import this commit in the build/make path: https://gerrit.omnirom.org/#/c/android_build/+/33182/

Finally execute these:

```
source build/envsetup.sh
lunch twrp_NB1-eng
mka recoveryimage
```