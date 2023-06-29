$regfile = "m32def.dat"
$crystal = 800000
Config Lcd = 16 * 2
Config Lcdpin = Pin , Rs = Portb.2 , E = Portb.3 , Db4 = Portb.4 , Db5 = Portb.5 , Db6 = Portb.6 , Db7 = Portb.7
Config Adc = Single , Prescaler = Auto , Reference = Avcc
Start Adc
Dim C As Integer
Do
Cls
Deflcdchar 0 , 32 , 4 , 14 , 4 , 31 , 4 , 10 , 17           ' replace ? with number (0-7)

Waitms 900
Loop
End