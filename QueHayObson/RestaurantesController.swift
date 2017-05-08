//
//  RestaurantesController.swift
//  QueHayObson
//
//  Created by Ernesto Salazar on 16/10/16.
//  Copyright © 2016 DreamTeamCo. All rights reserved.
//

import Foundation
import UIKit
import Alamofire

/*class RestaurantesController : UIViewController, UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate, UICollectionViewDelegate, UICollectionViewDataSource{
    
    @IBOutlet var tvRestaurantes: UITableView!
    
    
    
    var restaurantes : [Lugares] = [] // quiero una variable alumno del tipo arreglo de alumno e inicializalo y esta contenida en este viewcontroller.
    // alumnos a su vez tiene un arreglo de materias
    
    var categorias = [""]
    
    
    var restaurantesFiltrados : [Lugares] = []
    
    override func viewDidLoad() { // aqui pones cosas que quieres que salgan incializadas
        
        // aqui hay un constructor
        // btw otra manera de hacerlo es : alumnos.append(Alumno(nombre: "José", apellidos: "Perez", matricula: "2312"... etc)
        
        /* codigo AAA */
        
        
        let sushi = "1"
        categorias.append(sushi)
        let tacos = "2"
        categorias.append(tacos)
        let ensalada = "3"
        categorias.append(ensalada)
        
        Alamofire.request("https://quehayobson.azurewebsites.net/api/get_posts/", parameters: ["post_type" : "evento"])
            .responseJSON {
                response in
                if let diccionarioRespuesta = response.result.value as? NSDictionary { // si tienes un valor que puede ser casteado como ns dictionary... continua
                    if let arregloPosts = diccionarioRespuesta.value(forKey: "posts") as? NSArray  {
                        
                        for post in arregloPosts {
                            if let diccionarioPost = post as? NSDictionary  {
                                
                                self.restaurantes.append(Lugares(desdeDiccionario: diccionarioPost, callback: self.actualizarTableViewRestaurantes))
                            }
                        }
                        self.tvRestaurantes.reloadData()
                    }
                }
        }
    }
  
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantesFiltrados.count // contar de manera dinamica el numero de elementos que hay en alumnos ... que seran representados como renglones
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaRestaurantes") as! CeldaRestaurantesController
        // as con signo de interrogacion es que le aseguras que celdaAlumno puede transformarse en tipo celdaAlumnoController, estamos haciendo un casting
        
        celda.lblNombreLugar.text = restaurantesFiltrados[(indexPath as NSIndexPath).row].nombre
        celda.lblHorario.text = restaurantesFiltrados[(indexPath as NSIndexPath).row].horario
        celda.lblDireccion.text = restaurantesFiltrados[(indexPath as NSIndexPath).row].direccion
        //celda.imgFondoCelda.image = restaurantesFiltrados[(indexPath as NSIndexPath).row].imgFoto
        //celda.lblLogoLugar.image = restaurantesFiltrados[(indexPath as NSIndexPath).row].imgLogo
        //celda.imgCorazon.image = restaurantesFiltrados[(indexPath as NSIndexPath).row].imgCorazon
        //celda.imgCategoria.image = restaurantesFiltrados[(indexPath as NSIndexPath).row].imgCategoria
        
        
        return celda
        
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        let item = collectionView.numberOfItems(inSection: 1)
        return item
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let item = collectionView.dequeueReusableCell(withReuseIdentifier: "itemCategoria", for: indexPath) as! CollectionRestaurantes
        
        
        item.lblCategoria.text = categorias[1]
        return item
        
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
            
                        detalleLugarController.lugares = restaurantes[(tvRestaurantes.indexPathForSelectedRow! as NSIndexPath).row]
            
            // alumno en la posicion seleccionada de la tabla va a ser ahora igual a materiaController
        }
        
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        // Obtener los alumnos que contengan un texto que se le parezca a searchText
        
        restaurantesFiltrados = [] // inicializado
        
        for lugares in restaurantes {// recorre el arreglo alumnos y cada iteracion alumno tiene el valor del alumno en respectiva iteracion
            
            if lugares.nombre.lowercased().range(of: searchText.lowercased()) != nil {
                restaurantesFiltrados.append(lugares)
            }
        }
        
        self.actualizarTableViewRestaurantes()
        
    }
    
    func actualizarTableViewRestaurantes(){
        tvRestaurantes.reloadData()
    }
    
    
}*/
