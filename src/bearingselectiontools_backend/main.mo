import Float "mo:base/Float";
import Debug "mo:base/Debug";
import HashMap "mo:base/HashMap";
import Nat "mo:base/Nat";
import Hash "mo:base/Hash";
import Iter "mo:base/Iter";

actor bearingselectiontools {

	stable var cId : Nat = 0;
	stable var elementoId : Nat = 0;

	var calculoRodamiento : Float = 0.0;


	type Requerimientos = {
		vidaUtil: Float;
		cargaAxial: Float;
		cargaRadial: Float;
		revoluciones: Float;
	};

	type miStruct = {
		rodNumeros: Nat;
		mmd: Nat;
        mmD: Nat;
        mmB: Nat;
		r: Nat;
        estaticaCO: Nat;
        dinamicaC: Nat;
        velMax: Float;
	};

	var calculos = HashMap.HashMap<Nat, Requerimientos>(0, Nat.equal, Hash.hash);
	var miArreglo = HashMap.HashMap<Nat, miStruct>(10, Nat.equal, Hash.hash);


	// public func calcularRodamiento(elem : Requerimientos) : ?Float {

	// 	let id : Nat = cId;
	// 	cId+=1;

	// 	calculos.put(id, elem);

	// 	Debug.print(debug_show(elem.vidaUtil));


	// 	// variables para manejar los cálculos

	// 	var varL : Float = elem.vidaUtil*revoluciones;

	// 	var fuerzauno : Float = 1*elem.cargaRadial + 2*elem.cargaAxial;
	// 	var fuerzados : Float = 0.5*elem.cargaRadial + 1.4*elem.cargaAxial;

	// 	if(fuerzauno > fuerzados) {
	// 		var fElegida : Float = fuerzauno;
	// 	} else if(fuerzauno < fuerzados) {
	// 		fElegida := fuerzados;
	// 	}
		
	// 	var rParcial : Float = elem.vidaUtil*1000000/1000000;
	// 	var raiz : Float = resParcial**(1/3);

	// 	var calculoRodamiento : Float = fElegida*raiz;

	// 	return calculoRodamiento;

	// };


	public func crearBaseDeDatos (elemento : miStruct) : async () {

		let id : Nat = elementoId;
		elementoId+=1;


		miArreglo.put(id, elemento);


		return ();

	};


	public func buscarRodamiento () : () {

		let miArregloIter : Iter.Iter<(Nat, miStruct)> = miArreglo.entries();
		
		let arregloFormateado : [(Nat, miStruct)] = Iter.toArray(miArregloIter);


		return ();

	};

};