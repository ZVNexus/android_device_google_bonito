# Device Tree for Google Pixel 3A/XL (bonito/sargo)

The Google Pixel 3A/XL (codenamed _"bonito/sargo"_) is a flagship smartphone from Google.
It was released in May 2019.

## Compile

First sync the DU TWRP Manifest.
```
repo init -u git://github.com/ZVNexus/du_manifest.git -b p9x-twrp
```

```
. build/envsetup.sh
lunch du_bonito-eng or lunch du_sargo-eng 
mka recoveryimage bootimage 
```

To test it:
```
fastboot boot out/target/product/sargo/boot.img
```
