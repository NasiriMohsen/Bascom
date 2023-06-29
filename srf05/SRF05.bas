$regfile = "m32def.dat"
$crystal = 800000
Config Lcd = 16 * 2
Config Lcdpin = Pin , Rs = Portb.2 , E = Portb.3 , Db4 = Portb.4 , Db5 = Portb.5 , Db6 = Portb.6 , Db7 = Portb.7
Cursor Offcls

Config Portd.7 = Output
Config Pind.6 = Input
Dim A As Word
Dim B As Single
Dim F As String * 10
Dim E As Byte
Dim C As Byte
C = 0
Locate 1 , 1
Lcd "Mohsen"
Waitms 500

Do
Toggle Portb.0
Toggle Portb.1

Pulseout Portd , 7 , C
Pulsein A , Pind , 6 , 1
B = A * 0.1735
F = Fusing(b , "&.&&")

Cls
Home
Lcd "  Distance is:"
Locate 2 , 1
Lcd F ; "cm"
Waitms 500

Loop
End