object registroProduccion {
	var produccionPorDia = [53,18,49,62,33]	
	
	method cambiarProduccionPorDia(nuevaLista) {
		produccionPorDia = nuevaLista
	}

	method algunDiaSeProdujo(cantidad){
		return produccionPorDia.contains(cantidad)
	}
	method MaximoValorDeProduccion(){
		return produccionPorDia.max()
		}
    method valoresDeProduccionPares(){
    	return produccionPorDia.filter({numero=>numero.even()})
    }
    method produccionEsAcotada(n1,n2){
    	return produccionPorDia.all({ numero => numero.between(n1,n2) })
    }
    method produccionesSuperioresA(n){
    	return produccionPorDia.filter({ numero => numero > n })
    }
    method produccionesSumando(n){
    	return produccionPorDia.map({ numero => numero + n})
    }
    method totalProducido(){
    	return produccionPorDia.sum()
    }
    method ultimoValorDeProduccion(){
    	return produccionPorDia.last()
    }
    method cantidadProduccionesMayorALaPrimera(){
    	return produccionPorDia.count({ numero => numero > produccionPorDia.first()})
    }
}