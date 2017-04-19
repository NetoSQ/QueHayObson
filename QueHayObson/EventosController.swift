//
//  EventosController.swift
//  QueHayObson
//
//  Created by Ernesto Salazar on 16/10/16.
//  Copyright © 2016 DreamTeamCo. All rights reserved.
//

import Foundation
import UIKit
import Alamofire


class EventosController: UIViewController, UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate{
    
    @IBOutlet var tvEventos: UITableView!
    
    
    var eventos : [Eventos] = []
    
    var eventosFiltrados : [Eventos] = []
    
    override func viewDidLoad() {
        
        
        /*Alamofire.request("https://quehayobson.azurewebsites.net/api/get_posts/", parameters: ["post_type" : "evento"])
            .responseJSON {
                response in
                if let diccionarioRespuesta = response.result.value as? NSDictionary { // si tienes un valor que puede ser casteado como ns dictionary... continua
                    if let arregloPosts = diccionarioRespuesta.value(forKey: "posts") as? NSArray  {
                        
                        for post in arregloPosts {
                            if let diccionarioPost = post as? NSDictionary  {
                                
                                self.eventos.append(Eventos(diccionario: diccionarioPost, callback: self.actualizarTableViewEventos))
                                
                            }
                        }
                        self.tvEventos.reloadData()
                    }
                }
        }*/
    }
    
    func actualizarTableViewEventos(){
        tvEventos.reloadData()
    }
    
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return eventosFiltrados.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celda = tableView.dequeueReusableCell(withIdentifier: "CeldaEventos") as! CeldaEventosController
        
        celda.lblNombreLugar.text = eventosFiltrados[(indexPath as NSIndexPath).row].nombre
        celda.lblHorario.text = eventosFiltrados[(indexPath as NSIndexPath).row].horario
        celda.lblDireccion.text = eventosFiltrados[(indexPath as NSIndexPath).row].direccion
        celda.imgFondoCelda.image = eventosFiltrados[(indexPath as NSIndexPath).row].imgFondo
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
        if segue.identifier == "goToDetalleEventos" { // en caso de que sea el sigue de materias entonces...
            
            // lo haces para tener acceso a traves de la variable materiasController a los elementos del destino
            // que es en este caso un ViewControlle
            
            let detalleLugarController = segue.destination as! DetalleEventos
            
            // haces un casting // ViewController = AAB
            
            // el alumno que seleccione , obten el indice,
            
            detalleLugarController.eventos = eventosFiltrados[(tvEventos.indexPathForSelectedRow! as NSIndexPath).row]  // alumno en la posicion seleccionada de la tabla va a ser ahora igual a materiaController
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

    
    
}
