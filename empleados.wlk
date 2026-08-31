object galvan{
    var sueldo = 15000
    var saldo = 0

    method sueldo(){
        return sueldo
    }

    method sueldo(_sueldo){
        sueldo = _sueldo
    }

    method cobrarSueldo(){
        saldo += sueldo
    }

    method gastar(cantidad){
        saldo -= cantidad
    }

    method deuda(){
        return if saldo < 0 then -saldo else 0
    }

    method dinero(){
        return if saldo >= 0 then saldo else 0
    }
}

object baigorria{
    var totalCobrado = 0
    var cantidadDeEmpanadasVendidas = 0

    method cantidadDeEmpanadasVendidas(){
        return cantidadDeEmpanadasVendidas
    }

    method venderEmpanadas(cantidad){
        cantidadDeEmpanadasVendidas += cantidad
    }

    method sueldo(){
        return self.cantidadDeEmpanadasVendidas() * 15
    }

    method cobrarSueldo(){
        totalCobrado += self.sueldo()
        cantidadDeEmpanadasVendidas = 0
    }

    method totalCobrado(){
        return totalCobrado
    }
}

object gimenez{
    var fondo = 300000

    method pagarSueldo(empleado){
        self.validarpagarSueldo(empleado)
        fondo -= empleado.sueldo()
        empleado.cobrarSueldo()
    }

    method fondo(){
        return fondo
    }


    method validarpagarSueldo(empleado) { //método para validar: es una orden
       // la condición es por la negación de la precondición
       if (not self.fondo() >= empleado.sueldo()) { 
           self.error("No puede pagar el sueldo porque el fondo es insuficiente")
       }
   }
}
