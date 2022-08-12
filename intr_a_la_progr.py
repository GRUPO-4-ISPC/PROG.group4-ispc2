#2)   Crear una lista en Python denominada “Dueno2”  y recorrerla con un bucle  mostrando sus elementos por pantalla 
#con excepción del DNI y el apellido. Los elementos de la lista son:
#           23546987,  “Maria”,  “Perez”, 4789689,  “Pueyrredon  811”
# que representan los datos del dueño de un perro (DNI, nombre, apellido, teléfono y dirección)
#dueno=["DNI","nombre", "apellido", "telefono", "direccion"]


#OPCION 1
dueno2=[23546987,"Maria","Perez",4789689,"Pueyrredon 811"]
for i in range(1):
	dueno2.remove(23546987)
	dueno2.remove("Perez")
print(dueno2)

#OPCION 2
dueno2=[23546987,"Maria","Perez",4789689,"Pueyrredon 811"]
for i in range(1):
	del dueno2[0]
	del dueno2[1]
print(dueno2)
