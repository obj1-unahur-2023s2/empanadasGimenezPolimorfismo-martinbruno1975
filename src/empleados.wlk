object galvan {
	var sueldo = 150000
	
	method sueldo() = sueldo
	method sueldo(unSueldo){
		sueldo = unSueldo
	}
	
	method cobrarSueldo(){}
}

object baigorria {
	var sueldo = 0
	var empanadasVendidas = 0
	
	method sueldo() = empanadasVendidas * 150
	method empanadasVendidas() = empanadasVendidas
	method empanadasVendidas(cantidad){
		empanadasVendidas = cantidad
	}
	
	
	method cobrarSueldo(){
		
	}
}

