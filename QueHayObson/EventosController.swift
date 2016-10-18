//
//  EventosController.swift
//  QueHayObson
//
//  Created by Ernesto Salazar on 16/10/16.
//  Copyright © 2016 DreamTeamCo. All rights reserved.
//
/*
import Foundation
import UIKit

class EventosController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet var tvEventos: UITableView!
    
    
    
    var eventos : [Lugares] = [] // quiero una variable alumno del tipo arreglo de alumno e inicializalo y esta contenida en este viewcontroller.
    // alumnos a su vez tiene un arreglo de materias
    
    var eventosFiltrados : [Lugares] = []
    
    override func viewDidLoad() { // aqui pones cosas que quieres que salgan incializadas
        
        // aqui hay un constructor
        // btw otra manera de hacerlo es : alumnos.append(Alumno(nombre: "José", apellidos: "Perez", matricula: "2312"... etc)
        
        /* codigo AAA */
        
        let lugar1 = Lugares(nombre: "CafeIguana", horario: "3:00 - 8:00", direccion: "Lago Onega 1126", foto: "InicioFondo", logo: "Presa", corazon: "favoritos", categoria: "Cat_Restaurante")
        eventos.append(lugar1)
        let lugar2 = Lugares(nombre: "CafeIguana", horario: "3:00 - 8:00", direccion: "Lago Onega 1126", foto: "", logo: "", corazon: "", categoria: "")
        eventos.append(lugar2)
        let lugar3 = Lugares(nombre: "CafeIguana", horario: "3:00 - 8:00", direccion: "Lago Onega 1126", foto: "", logo: "", corazon: "", categoria: "")
        eventos.append(lugar3)
        let lugar4 = Lugares(nombre: "CafeIguana", horario: "3:00 - 8:00", direccion: "Lago Onega 1126", foto: "", logo: "", corazon: "", categoria: "")
        eventos.append(lugar4)
        
        
        
        eventosFiltrados = eventos
        
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return eventosFiltrados.count // contar de manera dinamica el numero de elementos que hay en alumnos ... que seran representados como renglones
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celda = tableView.dequeueReusableCell(withIdentifier: "CeldaEventos") as! CeldaEventosController
        // as con signo de interrogacion es que le aseguras que celdaAlumno puede transformarse en tipo celdaAlumnoController, estamos haciendo un casting
        
        celda.lblNombreLugar.text = eventosFiltrados[(indexPath as NSIndexPath).row].nombre
        celda.lblHorario.text = eventosFiltrados[(indexPath as NSIndexPath).row].horario
        celda.lblDireccion.text = eventosFiltrados[(indexPath as NSIndexPath).row].direccion
        celda.imgFondoCelda.image = eventosFiltrados[(indexPath as NSIndexPath).row].imgFoto
        celda.lblLogoLugar.image = eventosFiltrados[(indexPath as NSIndexPath).row].imgLogo
        celda.imgCorazon.image = eventosFiltrados[(indexPath as NSIndexPath).row].imgCorazon
        celda.imgCategoria.image = eventosFiltrados[(indexPath as NSIndexPath).row].imgCategoria
        
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
            
            let detalleLugarController = segue.destination as! DetalleLugar1
            
            // haces un casting // ViewController = AAB
            
            // el alumno que seleccione , obten el indice,
            
            detalleLugarController.lugares = eventosFiltrados[(tvEventos.indexPathForSelectedRow! as NSIndexPath).row]  // alumno en la posicion seleccionada de la tabla va a ser ahora igual a materiaController
        }
        
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        // Obtener los alumnos que contengan un texto que se le parezca a searchText
        
        eventosFiltrados = [] // inicializado
        
        for lugares in eventos {// recorre el arreglo alumnos y cada iteracion alumno tiene el valor del alumno en respectiva iteracion
            
            if lugares.nombre.lowercased().range(of: searchText.lowercased()) != nil {
                eventosFiltrados.append(lugares)
            }
        }
        
        tvEventos.reloadData()
        
    }
    
    
}*/
