//Escribir aqui los objetosobject gimenez {
	method pagarSueldo(empleado){
		fondo = fondo - empleado.sueldo()
	empleado.cobrarSueldo()
	}

}
object galvan{

	var sueldo = 15000
    var deuda = 0
    var dinero = 0 

	method sueldo(){
		return sueldo
	}
--no podria poner self.sueldo?? como el this en java?
	method sueldo(_sueldo){
		sueldo = _sueldo
	}
	
	method cobrarSueldo(
		totalCobrado += self.sueldo()
	)

	method totalCobrado{
		return totalCobrado
	}

    method gastar(cuanto){
        dinero = self.dinero() - cuanto
    }

    method deuda(){
       return if dinero<0 then dinero else 0
    }

    method dinero(){
        return dinero
    }
}

object balgarria{
var empanadasVendidas = 0

	method sueldo(){
		return self.empanadasVendidas() * self.precioEmpanadas()
	}

	method empanadasVendidas(){
		return empanadasVendidas
	}

	method vender(empanadas){
		empanadasVendidas = empanadasVendidas + empanadas
	}

	method precioEmpanadas(){
		return 15
	}
method cobrarSueldo(){}
}
