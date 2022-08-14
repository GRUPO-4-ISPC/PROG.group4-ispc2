##4)Crear un lista en Python denominado “Perro2” que contenga los siguientes valores:

## 14,  Fido,  12/12/2012 , Macho, 23546987

## Recorrer la lista “Perro” con un bucle y mostrar sus elementos por pantalla , comenzando desde el último hasta el primero.

Perro2 = [14, "Fido", "12/12/2012", "Macho", 13]

for i in reversed(Perro2):
    print(i)
    


##5)Crear una tupla en Python con el nombre de “Historial” la cual contenga los siguientes valores:

## 2350, 5960, 23000, 1000, 8900

## Que representa montos de atención en pesos por diferentes servicios/consultas de la mascota “Puppy”. 
## Calcular el monto total gastado a lo largo del tiempo por atención de “Puppy”. Si el gasto efectuado es menor a 30000, 
## mostrar en pantalla dicho resultado, caso contrario mostrar el mensaje “Gastos por encima de lo presupuestado”.

Historial = (2350, 5960, 23000, 1000, 8900)

puppy = sum(list(Historial))

if puppy < 30000:
    print(puppy)
else:
    print("Gastos por encima de lo presupuestado")






















