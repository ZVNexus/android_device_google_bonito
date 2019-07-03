# Device Tree for Google Pixel 3A/XL (bonito/sargo)

The Google Pixel 3A/XL (codenamed _"bonito/sargo"_) is a flagship smartphone from Google.
It was released in May 2019.

## Compile

First sync the TWRP minimal manifest.
```
repo init -u git://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-9.0
```

Finally execute these:
```
. build/envsetup.sh
export ALLOW_MISSING_DEPENDENCIES=true
lunch omni_bonito-eng or lunch omni_sargo-eng 
mka adbd recoveryimage 
```

To test it:
```
fastboot boot out/target/product/sargo/boot.img
```
