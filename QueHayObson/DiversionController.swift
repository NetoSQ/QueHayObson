//
//  DiversionController.swift
//  QueHayObson
//
//  Created by Ernesto Salazar on 17/10/16.
//  Copyright © 2016 DreamTeamCo. All rights reserved.
//

import Foundation
import UIKit

class DiversionController : UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet var tvDiversion: UITableView!
    
    
    
    var diversion : [Lugares] = [] // quiero una variable alumno del tipo arreglo de alumno e inicializalo y esta contenida en este viewcontroller.
    // alumnos a su vez tiene un arreglo de materias
    
    var diversionFiltrados : [Lugares] = []
    
    override func viewDidLoad() { // aqui pones cosas que quieres que salgan incializadas
        
        // aqui hay un constructor
        // btw otra manera de hacerlo es : alumnos.append(Alumno(nombre: "José", apellidos: "Perez", matricula: "2312"... etc)
        
        /* codigo AAA */
        
        let lugar1 = Lugares(nombre: "Arena ITSON", horario: "No disponible", direccion: "Avenida Eusebio Kino (Antonio Caso y San Antonio) 85130 Cd Obregon, Sonora", foto: "DArenaFondo", logo: "DArenaLogo", corazon: "favoritosSeleccionado", categoria: "Cat_Diversion",informacion: "", opiniones: "")
            diversion.append(lugar1)
        
        let lugar2 = Lugares(nombre: "Starbucks", horario: "7:00 - 23:00", direccion: "Av. Jalisco No 920, Fracc Real del Sol, 85000 Cd ObregÛn, Son.", foto: "DStarbucksFondo", logo: "DStarbucksLogo", corazon: "favoritos", categoria: "Cat_Diversion",informacion: "", opiniones: "Ernesto FloresNoviembre 1, 2012 Disfruten de su bebida caliente en taza de porcelana. SÛlo hay que pedirlo al barista (la taza se queda, no es souvenir)")
        diversion.append(lugar2)
        
        let lugar3 = Lugares(nombre: "Parque Infantil Ostimuri", horario: "8:00 A.M. a 8:00 P.M", direccion: "Calzada Ostimuri s/n, Bellavista, 85130 Cd ObregÛn, SON", foto: "DParqueFondo@3x (2)", logo: "DParqueLogo", corazon: "favoritosSeleccionado", categoria: "Cat_Diversion",informacion: "", opiniones: "Jose Luis ArellanoSeptiembre 29, 2015Es triste ver que pasen los aÒos y no le den el mantenimiento que se merece,y ni hablar de su zoologico! Hay que cuidarlo y que lo actualicen")
        diversion.append(lugar3)
        
        let lugar4 = Lugares(nombre: "Cinepolis", horario: "1 AM ñ 12 AM", direccion: "Blvd. Rodolfo ElÌas Calles 1750, Prados del Tepeyac, 85000 Cd. ObregÛn, Son.", foto: "DCinepolisFondo", logo: "DCinepolisLogo", corazon: "favoritos", categoria: "Cat_Diversion",informacion: "En la cartelera de CinÈpolis en Ciudad ObregÛn encontrar·s los horarios de las pelÌculas de estreno. °Reserva tus boletos para el cine ahora!", opiniones: "Muy buenos asientos y promociones y mas si cuentas con tu tarjeta club. El mejor lugar para disfrutar los estrenos Exelente servicio, salas muy grande y deliciosa dulceria")
        diversion.append(lugar4)
        
        let lugar5 = Lugares(nombre: "Cinemex", horario: "1 PM-12 AM", direccion: "Calle Vicente Guerrero No.1051 Poniente, Cumuripa, 85140 Cd ObregÛn", foto: "DCinepolisFondo", logo: "DCinemexLogo", corazon: "favoritos", categoria: "Cat_Diversion",informacion: "Cadena de cines en MÈxico. Presenta informaciÛn relevante sobre cartelera, salas, pelÌculas en exhibiciÛn, concursos y mucho m·s.", opiniones: "Leticia BeltranJulio 1, 2013 Despues de probar las plazas platino no ahi nada igual, es como ver la pelicula en tu casa pero en HD... y k t lleven la botana a tu asiento.")
        diversion.append(lugar5)
        
        let lugar6 = Lugares(nombre: "Red Spot Paintball", horario: "10:00 ñ 20:00", direccion: "Calle El Camino s/n, Cd ObregÛn, Son.", foto: "DGotchasFondo", logo: "DGotchasLogo", corazon: "favoritosSeleccionado", categoria: "Cat_Diversion",informacion: "Nuevo campo de Gotcha Red Spot. Puedes llevar a tu familia para que te vean practicar")
        diversion.append(lugar6)
        
        let lugar7 = Lugares(nombre: "Bolerama Cd. ObregÛn", horario: "10:00 - 22:00", direccion: "", foto: "DBoleramaFondo", logo: "DBoleramaLogo", corazon: "favoritosSeleccionado", categoria: "Cat_Diversion",informacion: "En Bolerama somos m·s que un simple boliche, somos una empresa dedicada a brindar la m·xima diversiÛn a toda la familia, promoviendo la convivencia y el entretenimiento. Nos esmeramos para que cada vez que nos visites tengas una experiencia ˙nica, rodeado de la mejor atenciÛn y servicio.", opiniones: " Boliche222 ìgran sitio para disfrutarî Ramsesxxx ìque bueno que ya abrieron uno por acaî Simi88 ìLe falta refrigeraciÛnÖ graciasî")
        diversion.append(lugar7)
        
        
        
        
        diversionFiltrados = diversion
        
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return diversionFiltrados.count // contar de manera dinamica el numero de elementos que hay en alumnos ... que seran representados como renglones
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celda = tableView.dequeueReusableCell(withIdentifier: "CeldaDiversion") as! CeldaDiversionController
        
        // as con signo de interrogacion es que le aseguras que celdaAlumno puede transformarse en tipo celdaAlumnoController, estamos haciendo un casting
        
        celda.lblNombreLugar.text = diversionFiltrados[(indexPath as NSIndexPath).row].nombre
        celda.lblHorario.text = diversionFiltrados[(indexPath as NSIndexPath).row].horario
        celda.lblDireccion.text = diversionFiltrados[(indexPath as NSIndexPath).row].direccion
        celda.imgFondoCelda.image = diversionFiltrados[(indexPath as NSIndexPath).row].imgFoto
        celda.lblLogoLugar.image = diversionFiltrados[(indexPath as NSIndexPath).row].imgLogo
        celda.imgCorazon.image = diversionFiltrados[(indexPath as NSIndexPath).row].imgCorazon
        celda.imgCategoria.image = diversionFiltrados[(indexPath as NSIndexPath).row].imgCategoria
        
        return celda
        
    }
    
    // se ejecuta despues de que des el click para que se renderee un nuevo viewController y antes de que se cree su instancia y aqui ponemos
    // lo que va a llevar la nueva instancia
    
    // prepare for segue pretende preparar para ejecutar el segue (un cambio de ventanas)
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // que sigue se esta ejecutando? ( lo obtienes de los parametros de la funcion.. UIStoryboardsegue)
        if segue.identifier == "goToDetalleLugar" { // en caso de que sea el sigue de materias entonces...
            
            // lo haces para tener acceso a traves de la variable materiasController a los elementos del destino
            // que es en este caso un ViewControlle
            
            let detalleLugarController = segue.destination as! DetalleLugar
            
            // haces un casting // ViewController = AAB
            
            // el alumno que seleccione , obten el indice,
            
            detalleLugarController.lugares = diversion[(tvDiversion.indexPathForSelectedRow! as NSIndexPath).row]
            
            // alumno en la posicion seleccionada de la tabla va a ser ahora igual a materiaController
        }
        
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        // Obtener los alumnos que contengan un texto que se le parezca a searchText
        
        diversionFiltrados = [] // inicializado
        
        for lugares in diversion {// recorre el arreglo alumnos y cada iteracion alumno tiene el valor del alumno en respectiva iteracion
            
            if lugares.nombre.lowercased().range(of: searchText.lowercased()) != nil {
                diversionFiltrados.append(lugares)
            }
        }
        
        tvDiversion.reloadData()
        
    }
    
    
}

