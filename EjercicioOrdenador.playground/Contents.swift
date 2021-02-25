import UIKit

/*Ejercicio de clases o estructura\

Implementar las siguientes clases o estructuras y sus relaciones (dise\'f1o del modelo):\

Queremos formar un ordenador, el ordenador tendr\'e1 los siguientes propiedades:\
    1) precio\
    2) nombre del equipo\
     3) Varios modulos de memoria ram, la ram tendr\'e1 las siguientes propiedades\
            a) capacidad de almacenamiento\
            b) fabricante\
            c) si tiene RGB\
    4) Tendremos un procesador, el procesador tendr\'e1 las siguientes propiedades\
            a) velocidad del procesador\
            b) numero de cores\
            c) numero de hilos\
            d) fabricante\
    5) podremos tener varios unidades de almacenamiento, tendr\'e1n las siguientes propiedades\
            a) capacidad de almacenamiento\
            b) fabricante\
            c) tipo de unidad (HD, SSD, Nvme)\
    6) Tendr\'e1 una tarjeta grafica, con las siguientes propiedades\
            a) ram\
            b) consumo\
            c) Cuda cores\
            d) velocidad\

Tareas:\
1) implementar el sistema de clases o de estructuras (o mezcla)\
2) Instanciar un ordenador completo con todos sus objetos con información
*/

class MemoriaRam{
    var capacidad : Int = 0
    var fabricante : String? = ""
    var rgb : Bool = false
}

class Procesador{
    var velocidad : Double = 0.0
    var cores : Int = 0
    var hilos : Int = 0
    var fabricante : String? = ""
}

class Almacenamiento{
    var tamanio : Int = 0
    var nombreFabricante : String? = ""
    var tipoUnidad : String? = ""
}

class Grafica{
    var cantidadRam : Int = 0
    var consumo : Int = 0
    var cores : Int = 0
    var velocidad : Int = 0
}

class Ordenador{
    var precio : Double = 0
    var nombre : String? = ""
    var ram : MemoriaRam?
    var microprocesador : Procesador?
    var discoDuro : Almacenamiento?
    var tarjetaGrafica : Grafica?
}

var pc = Ordenador()
pc.precio = 1500
pc.nombre = "MSI Leopard 2070"

var ram1 = MemoriaRam()
ram1.capacidad = 8
ram1.fabricante = "Gigabyte"
ram1.rgb = true
pc.ram = ram1

var micro = Procesador()
micro.velocidad = 3000.14
micro.cores = 8
micro.hilos = 16
micro.fabricante = "Intel"
pc.microprocesador = micro

var hhd = Almacenamiento()
hhd.tamanio = 1000
hhd.tamanio = 1000
hhd.nombreFabricante = "Corsair"
hhd.tipoUnidad = "SSD"
pc.discoDuro = hhd

var graphic = Grafica()

graphic.cantidadRam = 8
graphic.consumo = 260
graphic.cores = 4
graphic.velocidad = 500
pc.tarjetaGrafica = graphic

dump(pc)



