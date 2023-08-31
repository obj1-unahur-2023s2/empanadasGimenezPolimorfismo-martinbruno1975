object galvan {
	var property sueldo = 150000
	var totalDinero = 0
	var totalDeuda = 0
	
	method cobrarSueldo() {
		totalDinero += 0.max(sueldo - totalDeuda)
		totalDeuda = 0.max(totalDeuda - sueldo)
	}
	
	method gastar(cuanto) {
		totalDeuda += 0.max(cuanto - totalDinero) 
		totalDinero = 0.max(totalDinero - cuanto) 
	}
	
	method totalDeuda() = totalDeuda
	method totalDinero() = totalDinero
}

object baigorria {
	var empanadasVendidas = 1000
	var totalCobrado = 0
	
	method totalCobrado() = totalCobrado 
	method venderEmpanada(){
		empanadasVendidas += 1
	}
	method sueldo() = empanadasVendidas * 150
	method cobrarSueldo(){totalCobrado += self.sueldo()}
}

object gimenez {
	var dinero = 3000000
	
	method dinero() = dinero
	method pagarA(empleado) {
    	dinero -= empleado.sueldo()
    	empleado.cobrarSueldo()
	}
		
}