"""
6)Crear una tupla en Python con el nombre de “Historial2”
la cual contenga los siguientes valores:

          23500, 5960, 2300, 10200, 8900

Que representa montos de atención en pesos por diferentes servicios/consultas d
e la mascota “Frida”. Calcular el monto total gastado a lo largo del tiempo
por atención de “Frida”. Crear una función que cuente cuantos gastos fueron
superiores a 5000 mostrando  el número calculado en pantalla.
"""

Historial2 = (23500, 5960, 2300, 10200, 8900)


def monto_total(Historial2):
    sumaTotal = 0
    for monto in Historial2:
        sumaTotal += monto
    print("El monto total por la atención de Frida es:" , sumaTotal)

def superior(Historial2):
    contador = 0
    for monto in Historial2:
        if monto > 5000:
            contador += 1
    print("Los gastos que fueron supeiores a 5000 fueron: " , contador)


monto_total(Historial2)
superior(Historial2)
            
    
        
    
