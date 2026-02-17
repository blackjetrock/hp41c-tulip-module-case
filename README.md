# HP41C TULIP Module Cases

Cases for the HP41C TULIP4041. These are OpenSCAD models for the TULIP cases for the HP41C. The case is a long module case (it pokes out of the end of the calculator about 3cm. It is made in two halves, these clip together using recesses and dimples along the long edges of the case. The OpenSCAD source has several switches at the top of the files that are used to generate each of the two halves of the case. There are also switches to generate the different options of case, such as the recess and bulge for the battery. Other switches can be used to debug the model, for example, the two halves can be displayed together, and a cube can be used to slice the model in order to examine internal dimensions.


## Version 1
This version of the case has a press-fit battery PCB. 

## Version 2
This version has a battery PCB that is soldered to the TULP PCB with stiff wires. There is more space in the top half, to allow for tolerances when sodlering the battery PCB.

## Switches

### top
```
0: No top half is rendered
1: Render top half of case
```

### base
```
0: No lower half is rendered
1: Render lower half of case
```

### status_tube
```
1:  Create hole for status LED
```

### bat_pcb_space
```
1:  Create a larger case top, with space for a battery holder and PCB.
```

### add_logo
```
0:  No logo
1:  Put a TULIP logo on the top of the case
```

### lower_external_flush
```
0:  Bottom of lower half of case is flat
1:  Lower half o cae has a step that is flush with the underside of the HP41C when the module
is inserted in the calculator. It provides more support for the module when it is plugged in and on a flat surface.
``


