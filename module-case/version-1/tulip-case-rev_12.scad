////////////////////////////////////////////////////////////////////////
// Case for TULIP4041
//
// Long Module case
//
// All options in this file
//
// 1) Standard case
// 2) Case flush with bottom of calculator
// 3) Higher case outside calculator, for RTC battery
// 4) Added status LED switch, increased PCB size so 0.1mm tolerance. 
//
// Rev7:
//
// 1. PCB rest in top half for connector soldering  done
// 2. Removal of slot in pcb mount                  done
// 3. Connector reference for soldering
// 4. Open up hole for SD card top
//
// Rev9:
// 1. Remove 'hooks' on top of top half USB end PCb supports
// 2. Add a ridge to the HP41C end across the connector pin ridges
// 3. Move the lower half ridge across the HP41C pin ridges 0.5mm towards the HP41C
//
// NOTE: It appears that the cutout PCB cuboid is 1.6mm below (towards the bottom) of the
//       PCB shapes shown with 'show_pcb'. This cutout cuboid is used to cut the top PCB
//       supports. The bottom half PCB supports are cut to height by the pcb()
//       module. This is 1.6mm lower than the cuboid used to cut the top supports. This means
//       that there is a 3.2mm gap between top an bottom supports. This allows the PCB to be
//       in the case at an angle which is needed as the USB end of the PCB has to be in
//       the position it is as the USB connector can go no higher. The front of the PCB
//       is held at the vertical position by ICs resting on the case bottom so can go no
//       lower.
//       Also, as the PCB is at a slight angle, the HP41C connector has to be soldered on
//       with the PCB and connector in th ecase so the conneector is at a slight angle
//       to ensure it is mating with the HP41C along the axis of the HP41C flexi PCB
//       mounting blade.
//
// Rev10
//
// 1.   Front wall shortened to leave a gap at either end so prongs of connector block can fit flush
//      on the inner surface of the top half.
// 2.   Make end of top at connector end flush on the inside.
// 3.   Make recess on side walls of top half larger (move to USB end 0.5mm)
//
//
// Rev 11
//
// 1.   Tilted PCB at 1.8 degrees to match the real PCB in the case.
//      Only the PCB cuboid that is used to cut the PCB support posts off is tilted.
// 2.   Extended the top USB end PCB support posts so they can be cut by the (tilted) pcb model
//
// Rev 12
//
// 1.   A % was left in the file that stopped the ridges on top of the PCB supports from being
//      present in the STL. Removed %
// 2.   The PCB support posts went through the case to the top surface (top half posts) when the
//      nobat option was selected. Put in a conditional to have two different post models for
//      bat and nobat options.

$fn = 40;

///////////////////////////////////////////////////////////////////////
//
// Options:
//
//
//-----

top                   = 0;
base                  = 1; 
pcb                   = 1;   // STL of Tulip PCB (with components)
bare_pcb              = 1;   // Simple cuboid of PCB size
bat_pcb               = 0;
show_bat_pcb_only     = 0;
bat_extra_y           = 40;
snug_w                = 1;  // Slightly wider
status_tube           = 1;  // Is there a hole for the status LED?
bat_pcb_space         = 0;  // Case larger for battery PCB

add_logo              = 1;
global_cutouts        = 1;
cutout_pcb            = 1;
show_pcb              = 1;
pcb_supports          = 1;
prev_rev_top          = 0;  // Show the previous revision of top half
prev_rev_top_diff     = 0;  // Diff this revision from previous revision
prev_rev_bot          = 0;  // Show the previous revision of bottom half
prev_rev_bot_diff     = 0;  // Diff this revision from previous revision

lower_external_flush  = 1; // Lower case outside the module bay flush
                          // with bottom of calculator

show_pipe             = 0;
show_pipe_type        = 0;
array_pipe            = 0;

sizing_cube           = 0;  // Cube for checking sizes
slice_check           = 0;  // Chop model for interior eamination

// PCB support sizes
top_pcb_support_z     = 8.6;

////////////////////////////////////////////////////////////////////////////////
//
// Test and debug stuff

spike_check =        0;

// IR LED
spike_x =            49.81;
spike_y =            4.84;

// Top edge USB connector
spike_x =            55.81;
spike_y =            22.62;

// Status LED
spike_x =            51.4;
spike_y =            9.425;


// Higher external area, for battery
higher_external_upper = 0;

// Bare PCB position offset to align it with the STL model
bare_pcb_x =         0;
bare_pcb_y =         -0.1;
bare_pcb_z =         -0.45;
  
///////////////////////////////////////////////////////////////////////

top_offset = 0;

ball_r = 0.75;
th = 1.0;

pcb_y = 54.5;
pcb_x = 23.3;

// How far back the PCB is, to allow the contacts to fit in the case
contacts_offset = 13.6;

mod_len = 29.7;

// Mod_len is now a number as changing the pcb length should not change the module length
// Old way to do it:
//    mod_len = pcb_y+contacts_offset+4;;
//
// This revision needs to be shorter by 1mm. PCB size was changed in previous revision

mod_len = 53.375 + 13.6 + 4 - 0;
base_h = 1.2;

// Original base_w: 26.5, this is a bit narrow, 26.9 should givbe a more
// snug fit.abs
base_w = 26.4+(snug_w*0.5);

side_runner_x = 2.4;
side_runner_x_off = 1.5;
side_runner_z = 0.9;

side_wall_x = th;
side_wall_z1 = 2;
side_wall_z2 = 4;
side_wall_y_offset = 12;
side_wall_len = mod_len - side_wall_y_offset;
side_wall_x_offset = -1.5;
side_wall_len = 17.5;

front_wall_z = th;
front_wall_y = th;
front_wall_x = base_w+side_runner_x-1.5/2;

end_wall_y = th;
end_wall_x = base_w;
end_wall_z = 7.4;

psep_x = 0.9;
psep_y = 8.3;
psep_z = th;

long_top_x = base_w + side_runner_x-1.5/2;
long_top_y = mod_len;
long_top_z1 = 5.0;
long_top_z2 = 6.8;
slope_x = 28.0;

// Extra height for battery PCB on top
extra_z = 3;

// Correction applied to V1.0 model
long_correction_z = -1.3;

// Z height of extra bottom thickness for flush with calulator bottom
lower_external_flush_z = 2.0;
lower_external_flush_y = 40.0;

// Extra Z height for higher external upper
higher_external_upper_delta_z = 0.9;

////////////////////////////////////////////////////////////////////////////////

s = 0.3;

module tulip_logo()
{
  translate([-8, 0, 6.5+higher_external_upper_delta_z+(bat_pcb_space*(extra_z-0.64))])
    scale([s, s, 1])
    linear_extrude(height = 0.8, center = true, convexity = 10, twist=0)
    import("TULIP_logo.dxf");
}

////////////////////////////////////////////////////////////////////////////////
// STL PCB model

module tulip_pcb()
{
  rotate([0,0,90])
    {
      translate([-21, -11.5, -3])
        { 
          scale([1,1,1])
            {
              //linear_extrude(height = 1, center = true, convexity = 10,twist=0)
              //              import("TULIP4041_1_6.stl", center=true);
              import("TUP4041.stl", center=true);
            }
          // Cylindrical spike that can be used to check poisitions of 
          // components on the PCB
          
          if(spike_check)
            {
              translate([spike_x, spike_y, 0])
                {
                  cylinder(h=50, d=1, $fn=10, center=true);
                }
            }
        }
    }
}

////////////////////////////////////////////////////////////////////////////////
//
// Import various STLs from the previous revision so that this revision can
// be compared to it

module previous_rev_bot()
{
  rotate([0,0,90])
    {
      translate([-21, -11.5, -2])
        {
          scale([1,1,1])
            {
              //linear_extrude(height = 1, center = true, convexity = 10,twist=0)
              import("../long_tulip_pcb_3/p5t_bat_stat_.stl", center=true);
            }

          // Cylindrical spike that can be used to check poisitions of 
          // components on the PCB
          
          if(spike_check)
            {
              translate([spike_x, spike_y, 0])
                {
                  cylinder(h=50, d=1, $fn=10, center=true);
                }
            }
        }
    }
}

//------------------------------------------------------------------------------

module previous_rev_top()
{
  rotate([0,0,0])
    {
      translate([30, 0, 0])
        {
          scale([1,1,1])
            {
              //linear_extrude(height = 1, center = true, convexity = 10,twist=0)
              import("../long_tulip_pcb_3/p5t_bat_stat_.stl", center=true);
            }

          // Cylindrical spike that can be used to check poisitions of 
          // components on the PCB
          
          if(spike_check)
            {
              translate([spike_x, spike_y, 0])
                {
                  cylinder(h=50, d=1, $fn=10, center=true);
                }
            }
        }
    }
}

////////////////////////////////////////////////////////////////////////////////

// Bare pcb

pcb_cutout_x = 7.3;
pcb_cutout_y = 2.8;

module pcb()
{
  translate([0, -mod_len/2+pcb_y/2+contacts_offset+2, 2])
    {
      difference()
        {
          cube([pcb_x,  pcb_y, 1.6], center=true);
          translate([pcb_x/2-pcb_cutout_x/2, pcb_y/2-pcb_cutout_y/2, 0])
            {
              cube([pcb_cutout_x,  pcb_cutout_y, 1.65], center=true);
            }
        }
    }
}

////////////////////////////////////////////////////////////////////////////////

module pcb_for_cutout()
{
  if( cutout_pcb )
    {
      if(pcb)
        {
          translate([0, 1, 3.8])
            {
              tulip_pcb();
            }
        }
      
      if(bare_pcb)
        {
          translate([bare_pcb_x, bare_pcb_y, bare_pcb_z])
            {
              pcb();
            }
        }
    }
}

module lower_pcb_for_top_cn_cutout()
{
    translate([0, -mod_len/2+pcb_y/2+contacts_offset+2, 2+1.3])
    {
      translate([0, -pcb_y/2, 0])
      rotate([-1.8, 0, 0])
      translate([0, pcb_y/2, 0])
      difference()
        {
          cube([pcb_x,  pcb_y, 1.6], center=true);
          translate([pcb_x/2-pcb_cutout_x/2, pcb_y/2-pcb_cutout_y/2, 0])
            {
              cube([pcb_cutout_x,  pcb_cutout_y/7, 1.65], center=true);
            }
        }
    }
}

////////////////////////////////////////////////////////////////////////////////

module battery_pcb_import()
{
  rotate([0,0,0])
    translate([-134.45, 105, -9.5])
    scale([1,1,1])
    //linear_extrude(height = 1, center = true, convexity = 10,twist=0)
    import("TULIP_battery_holder.stl", center=true);
}

module battery_pcb_core(pcb_only, grip_edge)
{
  if(pcb_only)
    {
      translate([0, 17.25, -8.75+13.9])
        {
          cube([26.5, 18.9, 1.0], center=true);
          translate([0, 0, -1.0/2])
            {
              cube([26.5-0.6, 18.9-0.6, 0.8], center=true);
            }
        }
    }
  else
    {
      battery_pcb_import();
    }
  
  if(0)
    {
      // Compare PCB model to PCB cube
      difference()
        {
          battery_pcb_import();
          translate([0, 17.25, -8.75])
            {
              cube([26.5, 18.9, 1.7], center=true);
            }
        }
    }
}

// Battery PCB.
// Option to remove a ridge of material from around the top edge so
// a difference will result in a feature that will grip the PCB

module battery_pcb(pcb_only, grip_edge)
{
  translate([17.2, 11, 0.2])
    {
      rotate([0, 0, 90])
        {
          battery_pcb_core(pcb_only, grip_edge);
        }
    }
}

////////////////////////////////////////////////////////////////////////////////
//
// Extra material that allows restraining material for the battery PCB
// and also extra material so battery PCB will fit in the top half of the case

rest_th = 5;
rest_l = 9;
rest_y = 3;

sidebar_z = 2.0;

module bat_pcb_extra()
{

  // End bar to hold PCB
  translate([0, 24, -8.75+13.8+0.5])
    {
      cube([rest_l+rest_th, rest_th, sidebar_z], center=true);
    }

  // Side bars to hold PCB
  translate([-base_w/2+rest_th/2, rest_y, -8.75+13.8+0.5])
    {
      cube([rest_th, rest_l+rest_th, sidebar_z], center=true);
    }

  //  translate([-base_w/2+0.25, 26, -8.75+13.8-0.3])
  //  {
  //    cube([0.5, 4, sidebar_z], center=true);
  //  }
  
  translate([ base_w/2-rest_th/2, rest_y, -8.75+13.8+0.5])
    {
      cube([rest_th, rest_l+rest_th, sidebar_z], center=true);
    }

  //translate([ base_w/2-0.25, 26, -8.75+13.8-0.3])
  //  {
  //    cube([0.5, 4, 2.0], center=true);
  //  }

  // Extra bulge on top
  translate([ 0, mod_len/2-bat_extra_y/2-0, extra_z/2+long_top_z2])
    {
      cube([long_top_x, bat_extra_y, extra_z], center=true);
    }
  
}

// Remove material where the battery holder will go
// Also allow space for soldered holder contacts and a route for wire to exit.

module bat_pcb_extra_rem()
{
  // Space for battery and holder
  translate([ 0, mod_len/2-bat_extra_y/2-5, -th+long_top_z2])
    {
      cylinder(d=22, h=extra_z*2, $fn = 100, center=true);
      translate([0, 0, 1])
        {
          cube([17.0, 24, 2], center=true);
        }

      translate([10, 12, 1])
        {
          cube([5.0, 10, 2], center=true);
        }

      translate([-10, 12, 1])
        {
          cube([5.0, 10, 2], center=true);
        }
    }
}

module battery_pcb_extra()
{
  difference()
    {
      bat_pcb_extra();      
      battery_pcb(1, 0);
    }
}

////////////////////////////////////////////////////////////////////////////////

module pin_separators()
{
  // Pin separators
  for ( i = [0:1:5]) 
    {
      translate([3.5*(i-3)+2.6, -mod_len/2+psep_y/2, base_h/2])
        {
          cube([psep_x, psep_y,psep_z], center=true);
        }
    }
}

////////////////////////////////////////////////////////////////////////////////
// Lower half, present parts

module pre()
{
  cube([base_w, mod_len, base_h], center=true); 
     
  // Runner
  translate([ base_w/2+side_runner_x/2-1.5, 0, (base_h+side_runner_z)-0.1])
    {
      cube([side_runner_x, mod_len, side_runner_z], center=true);
      translate([-side_runner_x/4+0.3, 0, -side_runner_z/2-0.1])
        cube([side_runner_x/2, mod_len, side_runner_z*2], center=true);
    }

  // Runner
  translate([-base_w/2-side_runner_x/2+1.5, 0, (base_h+side_runner_z)-0.1])
    {
      cube([side_runner_x, mod_len, side_runner_z], center=true);
      translate([side_runner_x/4-0.3, 0, -side_runner_z/2-0.1])
        cube([side_runner_x/2, mod_len, side_runner_z*2], center=true);
    }

  // Front wall
  translate([0, -mod_len/2+front_wall_y/2, (base_h+front_wall_z)/2])
    {
      cube([base_w+side_runner_x-1.5/2-2, front_wall_y, front_wall_z], center=true);
    }

  pin_separators();
  
  // Rear wall
  translate([0, mod_len/2-end_wall_y/2, end_wall_z/2])
    cube([end_wall_x, end_wall_y, end_wall_z], center=true);
  
  if(0)
    {
      translate([0, 0, -10])
        side_wall();
    }
  
  
  translate([ base_w/2-side_wall_x/2, -mod_len/2+side_wall_len/2+side_wall_y_offset, side_runner_z])
    side_wall();
  
  translate([-base_w/2+side_wall_x/2, -mod_len/2+side_wall_len/2+side_wall_y_offset, side_runner_z])
    side_wall();

  if(lower_external_flush)
    {
      // Add extra cube of material to make case flush with bottom of
      // calculator externally.
      translate([0, mod_len/2-end_wall_y/2-lower_external_flush_y/2+end_wall_y/2, -base_h/2-lower_external_flush_z/2])
        {
          cube([base_w, lower_external_flush_y, lower_external_flush_z], center=true);
        }
    }

  // Supports for Tulip PCB
  if( pcb_supports )
    {
      // Front supports not needed as PCB rests on ICs.
      // These supports don't actually reach the PCB.
      if(0)
        {
          translate([pcb_x/2+0.25, -19.6, 1.8])
            {
              cube([1.5, 1, 3], center=true);
            }
      
          translate([-pcb_x/2-0.25, -19.6, 1.8])
            {
              cube([1.5, 1, 3], center=true);
            }
        }
      
      translate([-pcb_x/2+2, 20, 1.8])
        {
          cube([2.0, 2.0, 3], center=true);
        }

      translate([pcb_x/2-6, 30.5, 1.8])
        {
          cube([2.0, 2.0, 3], center=true);
        }
    }
}

module side_wall()
{
  rotate([0, 0, 90])
    translate([0, side_wall_x/2, 0])
    rotate([90,0,0])
    //translate([0, 0, 0])
    //rotate([0, 0, 0])
    linear_extrude(side_wall_x) 
    {
      polygon(
              points = 
              [
               [-side_wall_len/2,      0],
               [ side_wall_len/2,      0],
               [ side_wall_len/2,      side_wall_z2],
               [-side_wall_len/2,      side_wall_z1],
               ]
              );
    }
  
  j = mod_len-side_wall_len-side_wall_y_offset;
  
  rotate([0, 0, 0])
    translate([0, side_wall_len/2+j/2, side_wall_z2/2])
    rotate([0,0,0])

    cube([side_wall_x, j, side_wall_z2], center=true);
     
   
     
}

module rem_cn_block()
{
  // Remove space for the connector frame
  translate([0, -25+0.95, 2.35])
    {
      rotate([3, 0, 0])
        {
          cube([25.2, 2.8, 6.2], center=true);
        }
      translate([0, -12.5/2+2.8/2, 0])
        {
          //%cube([3.0, 12.5, 3.0], center=true);
        }
    }
}

// Lower half, removals

module rem(cutouts_present)
{

  // Space for connector block
  rem_cn_block();
  
  if(cutouts_present)
    {
      // Cutout for USB socket
      usb_d = 3.5;
      usb_r = usb_d /2;

      
      translate([-5.8, mod_len/2, 4.0])
        {
          translate([-9/2+usb_r, 0, 0])
            rotate([90, 0, 0])
            {
              cylinder(d=usb_d, h=20, $fn = 200,center=true);
            }
          translate([9/2-usb_r, 0, 0])
            rotate([90, 0, 0])
            {
              cylinder(d=usb_d, h=20, $fn = 200, center=true);
            }

          cube([6.2, 20, usb_d], center=true);
        
          // Cut away top of opening
          if(1)
            {
              translate([0, 0, usb_r])
                cube([9.0, 20, usb_r*2], center=true);
            }
        }
    }
  
  if(cutouts_present)
    {

      // Hole for IR LED
      translate([-5.4+11, mod_len/2, 4])
        {
          translate([1.1, 0, 0])
            rotate([90, 0, 0])
            {
              cylinder(d=3.0, h=3, $fn = 200, center=true);
            }
 
        }
      
      // Cutout for SD card
      translate([-11, 17, base_h+1.45])
        {
          cube([5, 14, 3], center=true);
        }
    }

  // Must have space for PCB
  pcb_for_cutout();
}


////////////////////////////////////////////////////////////////////////////////

module long(cutouts_present)
{
  difference()
    {
      translate([0, 0, long_correction_z])
        {
          pre();
        }
      rem(cutouts_present);
    }

  bb = 18;
  cc = 3;
  aa = 14;
  ee = -4;
  dd = 40;
     
  // Latch balls
  translate([-long_top_x/2+th+0.1, mod_len*aa/dd, ball_r/2+base_h+side_wall_z1/2])
    sphere(r=ball_r);

  translate([ long_top_x/2-th-0.1, mod_len*aa/dd, ball_r/2+base_h+side_wall_z1/2])
    sphere(r=ball_r);

  translate([-long_top_x/2+th+0.1, mod_len*bb/dd, ball_r/2+base_h+side_wall_z1/2])
    sphere(r=ball_r);

  translate([ long_top_x/2-th-0.1, mod_len*bb/dd, ball_r/2+base_h+side_wall_z1/2])
    sphere(r=ball_r);

  translate([-long_top_x/2+th+0.1, -mod_len*cc/dd, ball_r/2+base_h+side_wall_z1/2])
    sphere(r=ball_r);

  translate([ long_top_x/2-th-0.1, -mod_len*cc/dd, ball_r/2+base_h+side_wall_z1/2])
    sphere(r=ball_r);

  translate([-long_top_x/2+th+0.1, -mod_len*ee/dd, ball_r/2+base_h+side_wall_z1/2])
    sphere(r=ball_r);

  translate([ long_top_x/2-th-0.1, -mod_len*ee/dd, ball_r/2+base_h+side_wall_z1/2])
    sphere(r=ball_r);

}


////////////////////////////////////////////////////////////////////////////////

module long_top_solid(s)
{
  
  // Work out where the slope now needs to end
  heud = higher_external_upper_delta_z * higher_external_upper;
  slope_angle = atan((long_top_z2-long_top_z1)/slope_x);
  slope_extend = heud/sin(slope_angle);

  echo(slope_extend);
  
  translate([-(long_top_x)/2+s, mod_len/2-s, 0])
    rotate([0, 0, 90])
    translate([0, 0, 0])
    rotate([90,0,0])
    linear_extrude(long_top_x-s-s) 
    {
      polygon(
              points = 
              [
               [           -mod_len+3.5,                -s      ],
               [                    0,                -s      ],
               [                    0,                long_top_z2-s+heud   ],
               [      -mod_len+slope_x+slope_extend,  long_top_z2-s+heud    ],
               [             -mod_len,                long_top_z1-s    ],
               [             -mod_len,                long_top_z1-s-0.9],
               [         -mod_len+3.0,                long_top_z1-s-0.7],

               ]
              );
    }
}

//------------------------------------------------------------------------------
//
// Build a solid top, then subtract the base from it, the top will
// then fit on the base.
// then remove excess material, which is the space for the PCB

module long_top_pre()
{
  translate([0, 0, base_h/2])
    {
      long_top_solid(0);
    }
  
  
  if( add_logo )
    {
      tulip_logo();
    }
}

module long_top_rem(cutouts)
{
  long(0);

  // Space for connector block
  rem_cn_block();

  translate([0, 0, base_h/2])
    {
      long_top_solid(th);
    }
  
  // Cutout for SD card
  if( cutouts)
    {
      translate([-14, 17, base_h+1.45+0.5-1.0])
        {
          cube([5, 14, 8], center=true);
        }
      
      // Cut out for status LED
      if( status_tube )
        {
        translate([2, 30.3, base_h+5])
          {
            cylinder(d=3.0, h=5, center=true);
          }
        }
        
      // Remove battery PCB
      if( bat_pcb_space )
        {
          battery_pcb(1, 0);
        }
    }
  
  // Must have space for PCB
  pcb_for_cutout();
  
}

////////////////////////////////////////////////////////////////////////////////
//
// Supports for the PCB in the top half
//

module top_pcb_support()
{
  // HP41C connector end
  translate([pcb_x/2-0.1, -19.6+2.0, 4.2+0.5])
    {
      difference()
        {
          cube([1.5, 6, 5.6-3], center=true);
          translate([0, 0, 4])
          rotate([3, 0, 0])
            {
              cube([10, 10, 3], center=true);
            }
        }
    }

  // HP41C connector end
  translate([-pcb_x/2+0.1, -19.6+2.0, 4.2+0.5])
    {
      difference()
        {
          cube([1.5, 6, 5.6-3], center=true);
          translate([0, 0, 4])
            rotate([3, 0, 0])
            {
              cube([10, 10, 3], center=true);
            }
        }
    }

  // Two posts at the USB end which hold the PCB in place for soldering of the connector
  //

  if( bat_pcb_space )
    {
      // Extra height for battery
      translate([-pcb_x/2+0.2, 33.0, 6.4-extra_z/2])
        {
          cube([2.0, 2.0, top_pcb_support_z-extra_z], center=true);
        }
      
      translate([ pcb_x/2-0.5, 31.5, 6.4-extra_z/2])
        {
          cube([2.0, 2.0, top_pcb_support_z-extra_z], center=true);
        }
    }
  else
    {
      // Extra height for battery
      translate([-pcb_x/2+0.2, 33.0, 6.4-extra_z/2-0.5])
        {
          cube([2.0, 2.0, top_pcb_support_z-extra_z-1], center=true);
        }
      
      translate([ pcb_x/2-0.5, 31.5, 6.4-extra_z/2-0.5])
        {
          cube([2.0, 2.0, top_pcb_support_z-extra_z-1], center=true);
        }
    }
  
  // Material to hold the PCB while soldering the connector block pins.
  translate([0, -19.6+5, 4.2+1])
    {
      difference()
        {
          cube([5, 2, 5.6-2-1], center=true);
                    
          // Remove part of support that would poke out of the other side of the case
          translate([0, 0, 4])
            rotate([3, 0, 0])
            {
              cube([10, 10, 3], center=true);
            }
        }
    }
  
}

module long_top1()
{
  difference()
    {
      long_top_pre();
      long_top_rem(global_cutouts);
    }
  
  // Location material for the connector block
  // Moved by 0.5mm for V9 change
  
  translate([0, -0.5, 0])
    {
      difference()
        {
          //translate([0, -25+0.95-1.4, 5])
          translate([0, -25+0.95-1.4, 5])
            {
              rotate([3, 0, 0])
                {
                  cube([25.2-6, (2.8+2)/2, 1.0], center=true);
                }
            }
          
          // Space for connector block
          rem_cn_block();
        }
    }
  
  // Status LED tube
  
  if(status_tube)
    {
      translate([2, 30.3, base_h+4.2])
        {
          cylinder(h=2, d=5, center=true);
        }
    }

  if( bat_pcb_space )
    {
      battery_pcb_extra();
    }

  // Front wall
  //translate([0, -mod_len/2+front_wall_y/2, (base_h+front_wall_z)/2])
  translate([0, -mod_len/2+front_wall_y/2, -base_h/2+psep_z+base_h+long_top_z1-th-th])
    {
      cube([base_w+side_runner_x-1.5/2-8.3, front_wall_y, front_wall_z], center=true);
    }

  translate([0, 0, -base_h/2+psep_z+base_h+long_top_z1-th-th+0.7])
    rotate([0, 180, 0])
    pin_separators();

  // Supports for Tulip PCB
  if( pcb_supports )
    {
      difference()
        {
          top_pcb_support();

          // Supports at one end are lower than the other
          lower_pcb_for_top_cn_cutout();
        }
    }
}
module long_top()
{
  difference()
    {
      long_top1();
      
      // Make space for battery holder on PCB
      if( bat_pcb_space )
        {
          bat_pcb_extra_rem();
        }

      // Cut out for status LED
      if( status_tube )
        {
        translate([2, 30.3, base_h+5])
          {
            cylinder(d=3.0, h=30, center=true);
          }
        }
    }
}
////////////////////////////////////////////////////////////////////////////////

module all()
{
  if(top)
    {
      translate([0, 0, top_offset])
        {
          difference()
            {
              long_top();
            }
        }
    }

  if(base)
    {
      long(global_cutouts);
    }

  if(show_pcb && pcb)
    {
      translate([0, 1, 3.8])
        tulip_pcb();
    }

  if(show_pcb && bare_pcb)
    {
      translate([bare_pcb_x, bare_pcb_y, bare_pcb_z])
        {
          pcb();
        }
    }
  if(bat_pcb)
    {
      translate([0, 0, 13.8])
        battery_pcb(show_bat_pcb_only);

      //      %battery_pcb(1);
    }

  
}

difference()
{
  all();

  if( prev_rev_top_diff)
    {
      previous_rev_top();
    }
  
  // Enable this if() to slice the model in various places to examine
  // the internal structure
  if(slice_check)
    {
      translate([0, -17.5, 0,])
        cube([30, 100, 30], center=true);
    }
}


// Arbitrary cube for rough size checks
if(sizing_cube)
  {
    translate([5, 30, 0])
      {
        cube([5, 5, 1.3], center=true);

      }

    translate([-10, 20, 0])
      {
        cube([5, 5, 1.3], center=true);

      }
  }


////////////////////////////////////////////////////////////////////////////////
//
// Light pipes
//
//
// Types:
// 1: plain cylinder
// 2: Nail type (cylinder on top or bottom)

pipe_dia = 2.9;

t1_z = 1;

pipe_len = (5.7 * bat_pcb_space) + (3.2 * (1-bat_pcb_space));
pipe_z   = (7.1 * bat_pcb_space) + (5.9 * (1-bat_pcb_space));


module pipe(type)
{
 
  if( type == 1 )
    {
      cylinder(d=pipe_dia, h=pipe_len, $fn=50, center=true);
    }

  if( type == 2 )
    {
      cylinder(d=pipe_dia, h=pipe_len, $fn=50, center=true);
      translate([0, 0, pipe_len/2+t1_z/2])
        {
          cylinder(d=pipe_dia+1, h=t1_z, $fn=50, center=true);
        }
    }

  if( type == 3 )
    {
      cylinder(d=pipe_dia, h=pipe_len, $fn=50, center=true);
      translate([0, 0, pipe_len/2])
        {
          sphere(d=pipe_dia, h=t1_z, $fn=6, center=true);
        }
    }
}

if( show_pipe && !array_pipe )
  {
    translate([2, 30.3, pipe_z])
      {
        pipe(show_pipe_type);
      }
  }

////////////////////////////////////////////////////////////////////////////////
//
// Build array of pipes for printing

module pa_rem()
{

  translate([pipe_dia*4, pipe_dia/2+0.25, 0.25])
    {          
      rotate([90, 0, 90])
        {
          cube([0.5, 0.5, pipe_dia*10], center=true);
        }
    }

  translate([pipe_dia*4, 3*pipe_dia/2-0.25, 0.25])
    {          
      rotate([90, 0, 90])
        {
          cube([0.5, 0.5, pipe_dia*10], center=true);
        }
    }

}

module pa_pre()
{
  for(x=[0:1:4])
    {
      for(y=[0:1:1])
        {
          translate([x*pipe_dia*2, y*pipe_dia*2, 0])
            {
              pipe(show_pipe_type);
            }
        }
    }

  for(x=[0:1:4])
    {
      translate([x*pipe_dia*2, pipe_dia, 0])
        {
          rotate([90, 0, 0])
            {
              cylinder(d = 1, h=pipe_dia*1.5, center=true);
            }
        }
    }
    
  translate([pipe_dia*4, pipe_dia/1, 0])
    {          
      rotate([90, 0, 90])
        {
          cylinder(d = 1, h=pipe_dia*8, center=true);
        }
    }
}

if( array_pipe )
  {
    difference()
      {
        pa_pre();
        pa_rem();
      }
  }

if( prev_rev_bot )
  {
    previous_rev_bot();
  }

if( prev_rev_top )
  {
    previous_rev_top();
  }

