$regfile = "m32def.dat"
$crystal = 8000000
Config Portb.0 = Output
Do
Portb.0 = 250
Waitms 100
Portb.0 = 0
Waitms 100
Portb.0 = 1
Loop
End