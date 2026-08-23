object galvan{
	var sueldo = 15000
	var saldo = 0

	method getSueldo(){
		return sueldo
	}

	method cambiarSueldo(nuevoSueldo){
		sueldo = nuevoSueldo
	}

	method cobrarSueldo(){
		saldo += sueldo
	}

	method gastar(cantidad){
		saldo -= cantidad
	}

	method deuda(){
		return 	if saldo < 0 then -saldo else 0  		
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

	method getSueldo(){
		return self.cantidadDeEmpanadasVendidas() * 15
	}

	method cobrarSueldo(){
		totalCobrado =+ self.getSueldo()
		cantidadDeEmpanadasVendidas = 0
	}
	
	method totalCobrado(){
		return totalCobrado
	}

}

object gimenez{
	var fondo = 300000
	
	method pagarSueldo(empleado){
		fondo -= empleado.getSueldo()
		empleado.cobrarSueldo()
	}

	method getFondo(){
		return fondo
	}
} 

