$regfile = "m32def.dat"
$crystal = 800000
Config Lcd = 16 * 2
Config Lcdpin = Pin , Rs = Portb.2 , E = Portb.3 , Db4 = Portb.4 , Db5 = Portb.5 , Db6 = Portb.6 , Db7 = Portb.7
Config Adc = Single , Prescaler = Auto , Reference = Avcc
Start Adc
Dim C As Byte
Do
Cls
If C < 250 Then C = C + 1
if C => 250 then C = 0
Lcd "This is C: " ; C
Waitms 50
Loop
End