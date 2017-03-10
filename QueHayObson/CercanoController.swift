//
//  CercanoController.swift
//  QueHayObson
//
//  Created by Ernesto Salazar on 18/10/16.
//  Copyright © 2016 DreamTeamCo. All rights reserved.
//

import Foundation
import UIKit

class CercanoController : UIViewController, UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate{
    
    @IBOutlet var tvCercano: UITableView!
    
    
    
    
    var favoritos : [Lugares] = [] // quiero una variable alumno del tipo arreglo de alumno e inicializalo y esta contenida en este viewcontroller.
    // alumnos a su vez tiene un arreglo de materias
    
    var favoritosFiltrados : [Lugares] = []
    
    override func viewDidLoad() { // aqui pones cosas que quieres que salgan incializadas
        
        // aqui hay un constructor
        // btw otra manera de hacerlo es : alumnos.append(Alumno(nombre: "José", apellidos: "Perez", matricula: "2312"... etc)
        
        /* codigo AAA */
        
        let lugar2 = Lugares(nombre: "Mochomos", horario: "13-00", direccion: "Lago Onega 1126", foto: "RMochomos", logo: "RMochomosLogo", corazon: "favoritosSeleccionado", categoria: "Restaurante",informacion: " Steakhouse y Restaurante de comida para el alma/surena.", opiniones: "Renee Angelica G. ï Enero 11, 2012Entrada: carpaccio de at˙n. Fuerte: Filete a las almendras. Postre: pie de mango. Vino: MT de BarÛn BalchÈ Esteban FernandezMayo 3 Totalmente recomendable el Rib Eye Mochomo's LauraMarzo 12 Rib eye a la tabla y estilo mochomos, muy rico. Arnold BacaJulio 16, 2015 RiquÌsimo Pidan Rib Eye a la Tabla Pepe GuerreroFebrero 24, 2015El rib eye de puerco yanyan")
        favoritos.append(lugar2)
        
        
        
        favoritosFiltrados = favoritos
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return favoritosFiltrados.count // contar de manera dinamica el numero de elementos que hay en alumnos ... que seran representados como renglones
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaCercano") as! CeldaCercanoController
        // as con signo de interrogacion es que le aseguras que celdaAlumno puede transformarse en tipo celdaAlumnoController, estamos haciendo un casting
        
        celda.lblNombreLugar.text = favoritosFiltrados[(indexPath as NSIndexPath).row].nombre
        celda.lblHorario.text = favoritosFiltrados[(indexPath as NSIndexPath).row].horario
        celda.lblDireccion.text = favoritosFiltrados[(indexPath as NSIndexPath).row].direccion
        celda.imgFondoCelda.image = favoritosFiltrados[(indexPath as NSIndexPath).row].imgFoto
        celda.lblLogoLugar.image = favoritosFiltrados[(indexPath as NSIndexPath).row].imgLogo
        celda.imgCorazon.image = favoritosFiltrados[(indexPath as NSIndexPath).row].imgCorazon
        celda.imgCategoria.image = favoritosFiltrados[(indexPath as NSIndexPath).row].imgCategoria
        
        return celda
        
    }
    
    // se ejecuta despues de que des el click para que se renderee un nuevo viewController y antes de que se cree su instancia y aqui ponemos
    // lo que va a llevar la nueva instancia
    
    // prepare for segue pretende preparar para ejecutar el segue (un cambio de ventanas)
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // que sigue se esta ejecutando? ( lo obtienes de los parametros de la funcion.. UIStoryboardsegue)
        if segue.identifier == "goToDetalle" { // en caso de que sea el sigue de materias entonces...
            
            // lo haces para tener acceso a traves de la variable materiasController a los elementos del destino
            // que es en este caso un ViewControlle
            
            let detalleLugarController = segue.destination as! DetalleLugar
            
            
            // haces un casting // ViewController = AAB
            
            // el alumno que seleccione , obten el indice,
            
            detalleLugarController.lugares = favoritosFiltrados[(tvCercano.indexPathForSelectedRow! as NSIndexPath).row]  // alumno en la posicion seleccionada de la tabla va a ser ahora igual a materiaController
        }
        
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        // Obtener los alumnos que contengan un texto que se le parezca a searchText
        
        favoritosFiltrados = [] // inicializado
        
        for lugares in favoritos {// recorre el arreglo alumnos y cada iteracion alumno tiene el valor del alumno en respectiva iteracion
            
            if lugares.nombre.lowercased().range(of: searchText.lowercased()) != nil {
                favoritosFiltrados.append(lugares)
            }
        }
        
        tvCercano.reloadData()
        
    }
    
    
}
