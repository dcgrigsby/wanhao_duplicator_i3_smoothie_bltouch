G21 ;metric values
 G90 ;absolute positioning
 M82 ;set extruder to absolute mode
 M107 ;start with the fan off
 G28 X0 Y0 ;move X/Y to min endstops
G28 Z0 ;move Z to min endstops
; BLTouch
M280 S11.05 ; alarm release and stow pin - in case in low position at start
M280 S7.43 ; stow pin - belt and suspenders
M561 ; clear pane
G1 Z10 ; move up 10
M280 S3.3 ; drop pin
G32 ; level
M280 S7.43 ; stow pin
G0 X45 Y45 ; back to first point
M280 S3.3 ; drop pin
G30 Z3.9 ; probe is offset 3.9mm
M280 S11.05 ; alarm release and stow pin
M280 S7.43 ; stow pin - belt and suspenders
G28 X0 Y0; move X/Y to min endstops
G0 Z0; move to Z0
; //BLTouch
 G1 Z15.0 F{speed_travel} ;move the platform down 15mm
 G92 E0 ;zero the extruded length
 G1 F200 E6 ;extrude 6 mm of feed stock
 G92 E0 ;zero the extruded length again
 G1 F{speed_travel}
 ;Put printing message on LCD screen
 M117 Printing...
