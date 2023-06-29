$regfile = "m32def.dat"
$crystal = 800000
Config lcd = 16*2
Config lcdpin =pin ,rs=portb.2,e= portb.3,db4= portb.4 , db5=portb.5, db6=portb.6, db7=portb.7
Config adc =single ,prescaler =auto , reference =Avcc
Start Adc
Do
Cls
Locate 2 , 1
Lcd "  Mohsen Rocks "
Waitms 500
Loop
End


