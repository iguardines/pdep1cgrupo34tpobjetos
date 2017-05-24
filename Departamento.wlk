import Vivienda.*
import Familia.*

class Departamento inherits Vivienda {
	var superficieTotal

	constructor(_horasTrabajoRestante, _horasTrabajoAcceso, _superficieTotal) {
		horasTrabajoAcceso = _horasTrabajoAcceso horasTrabajoRestante =
		_horasTrabajoRestante superficieTotal = _superficieTotal
	}

	method soportaFamilia(cantFamiliares) {
		return self.capacidadIntengrantes() == cantFamiliares ||
		self.capacidadIntengrantes() == ( cantFamiliares + 1 )
	}

	method capacidadIntengrantes() {
		return self.superficieTotal() / 15
	}

	method superficieTotal() {
		return superficieTotal
	}
}