Dim weight As double
Dim water As double
Dim goal As double

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