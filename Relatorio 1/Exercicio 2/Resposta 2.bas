Dim password As Integer 
Dim answer As Integer 

password = 4321
input answer 

while answer <> password
    print"PIN invalido. Tente novamente."
    input answer
Wend

print "Transacao autorizada!"
Sleep