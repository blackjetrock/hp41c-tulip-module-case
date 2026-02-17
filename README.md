# HP41C TULIP Module Cases

Cases for the HP41C TULIP4041. These are OpenSCAD models for the TULIP cases for the HP41C. The case is a long module case (it pokes out of the end of the calculator about 3cm. It is made in two halves, these clip together using recesses and dimples along the long edges of the case. The OpenSCAD source has several switches at the top of the files that are used to generate each of the two halves of the case. There are also switches to generate the different options of case, such as the recess and bulge for the battery. Other switches can be used to debug the model, for example, the two halves can be displayed together, and a cube can be used to slice the model in order to examine internal dimensions.

<img width="818" height="457" alt="image" src="https://github.com/user-attachments/assets/e85c5058-ab2b-4eee-9f52-dbfafaabbde0" />


## Version 1
This version of the case has a press-fit battery PCB. 
<img width="709" height="549" alt="image" src="https://github.com/user-attachments/assets/d6037c1e-d46e-4d00-9ae8-fbbaa653a23a" />

## Version 2
This version has a battery PCB that is soldered to the TULP PCB with stiff wires. There is more space in the top half, to allow for tolerances when sodlering the battery PCB.

<img width="818" height="457" alt="image" src="https://github.com/user-attachments/assets/2da2d76c-0790-4f75-8000-bd97b65804a5" />

## Switches

### top
```
0: No top half is rendered
1: Render top half of case
```
<img width="810" height="366" alt="image" src="https://github.com/user-attachments/assets/c07e3f91-cb87-462e-a0ec-a878d87abd94" />

### base
```
0: No lower half is rendered
1: Render lower half of case
```
<img width="810" height="368" alt="image" src="https://github.com/user-attachments/assets/ac78f434-1aa1-4ec9-9117-c4625098c610" />

Setting both top and base to 1 results in a rendring of both halves, in the clipped together positions.

<img width="818" height="457" alt="image" src="https://github.com/user-attachments/assets/a5d19ca3-40d9-4f14-86a2-fe355817d3c0" />

### status_tube
```
1:  Create hole for status LED
```

### bat_pcb_space
```
1:  Create a larger case top, with space for a battery holder and PCB.
```
<img width="810" height="368" alt="image" src="https://github.com/user-attachments/assets/821c4bd2-4172-4758-834f-6bd1ae545b6e" />

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
```
<img width="810" height="368" alt="image" src="https://github.com/user-attachments/assets/f9c961c1-677b-495c-8c2b-9452d834dc6f" />

### slice_check

```
0:  Turns on a cube that can be used o chop the model and check interior thicknesses
```


