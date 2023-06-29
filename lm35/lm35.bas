$regfile = "m16def.dat"
$crystal = 10000000
Config Lcdpin = Pin , Db4 = Pind.0 , Db5 = Pind.1 , Db6 = Pind.2 , Db7 = Pind.3
Config Lcd = 16 * 2 : Dim A As Word
Config Adc = Single , Prescaler = Auto : Start Adc
Do
A = Getadc(0) : A = A / 2
Locate 1 , 1 : Lcd "temp is;" ; A ; "c"
Loop
End