Dim weight As Double
Dim water As Double
Dim goal As Double

Print "Coloque respectivamente seu peso com uma casa decimal e depois a quantidade de agua ingerida (EM ML)."

Input weight
Input water

goal = 35 * weight

if water >= goal then 
    print "Meta atiginda!"
else 
    print"Meta nao atingida"
end if 

Sleep