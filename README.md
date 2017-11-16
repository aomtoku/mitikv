# mitiKV 

# Directory
```
mitikv/lib -> NetFPGA-SUME library
mitikv/contrib-project -> The project files for NetFPGA-SUME
mitikv/mitikv -> Standalone set for a single 10G port to a single 10G port
mitikv/mitiCAM -> Standalone set for a single 10G port to a single 10G port
```

# Porting to NetFPGA-SUME-dev or live
```
 $ cp -r lib/* <NetFPGA-SUME-live>/lib/hw/std/cores/
 $ cp -r contrib-project/* <NetFPGA-SUME-live>/contrib-projects/
 $ vim settings.sh
 $ source settings.sh
 $ make -C $SUME_FORDER && make -C $NF_DESIGN_DIR
```

