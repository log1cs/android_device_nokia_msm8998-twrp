# Device Tree for Nokia 8 (Treble)

The Nokia 8 is a high-end Nokia-branded smartphone running the Android operating system
Announced on 16 August 2017 in London, England by HMD Global,the phone began sales in Europe in September 2017.

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
| Camera (Front)          | 13 MP, f/2.0, (wide), 1/3.1", 1.12µm, PDAF                                                                                     


## How to boot into TWRP Recovery:

First, download the boot image then execute this command:
``
fastboot flash boot <your image here>
fastboot reboot 
``

Then you should be able to boot TWRP!
