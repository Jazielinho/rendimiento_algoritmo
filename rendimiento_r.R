# Dos funciones que devuelven el mismo resultado
# Pero tienen distinto rendimiento
# uno es constante, el otro es lineal

calcula_suma_lineal <- function(cantidad):
    # calcula la suma de n numeros, pero sumando de uno en uno
    suma = 0
    for (i in seq(1, cantidad)):
        suma += i
    return(suma)


calcula_suma_constante <- function(cantidad):
    ''' calcula la suma de n numeros, pero de manera optima '''
    return(cantidad * (cantidad + 1) / 2)


inicio = Sys.time()
print('Suma constante')
print(calcula_suma_constante(1000))
print('tiempo: ', time.time() - inicio)

inicio = time.time()
print('Suma lineal')
print(calcula_suma_lineal(1000))
print('tiempo: ', time.time() - inicio)
