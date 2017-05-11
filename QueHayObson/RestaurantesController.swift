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

class RestaurantesController : UIViewController, UITableViewDataSource, UITableViewDelegate, UICollectionViewDelegate, UICollectionViewDataSource{
    
    @IBOutlet var tvRestaurantes: UITableView!
    
    
    
    var restaurantes : [Lugares] = [] // quiero una variable alumno del tipo arreglo de alumno e inicializalo y esta contenida en este viewcontroller.
    // alumnos a su vez tiene un arreglo de materias
    
    var categorias = [""]
    
    
    var restaurantesFiltrados : [Lugares] = []
    
    
    override func viewDidLoad() { // aqui pones cosas que quieres que salgan incializadas
        
        // aqui hay un constructor
        // btw otra manera de hacerlo es : alumnos.append(Alumno(nombre: "José", apellidos: "Perez", matricula: "2312"... etc)
        
        /* codigo AAA */
        
        
        let sushi = "Sushi"
        categorias.append(sushi)
        let tacos = "tacos"
        categorias.append(tacos)
        let ensalada = "ensalada"
        categorias.append(ensalada)
        let ensalada2 = "ensalada Uno"
        categorias.append(ensalada2)
        let ensalada3 = "ensalada Dos"
        categorias.append(ensalada3)
        
    
        Alamofire.request("https://quehay.azurewebsites.net/api/restaurantes.php", method: .get, parameters: nil).responseJSON { response in
            if let listaLugares = response.result.value as? NSArray{
                for lugar in listaLugares{
                    if let diccionarioLugar = lugar as? NSDictionary{
                        self.restaurantes.append(Lugares(desdeDiccionario: diccionarioLugar, callback: self.actualizarTableViewRestaurantes))
                    }
                }
                self.tvRestaurantes.reloadData()
            }
        }
        
        restaurantesFiltrados = restaurantes
        
        self.navigationController?.navigationBar.backgroundColor = #colorLiteral(red: 0.1593368053, green: 0.6614125967, blue: 0.7377108932, alpha: 1)
        self.navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.1593368053, green: 0.6614125967, blue: 0.7377108932, alpha: 1)
        self.navigationController?.navigationBar.backItem?.backBarButtonItem?.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName : UIColor.white]
        self.navigationController?.navigationBar.backItem?.backBarButtonItem?.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        
    }
  
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaRestaurantes") as! CeldaRestaurantesController
        
        celda.lblNombreLugar.text = restaurantes[(indexPath as NSIndexPath).row].nombre
        celda.imgFondoCelda.image = restaurantes[(indexPath as NSIndexPath).row].imgFoto
        
        //celda.lblCal.text = restaurantes[(indexPath as NSIndexPath).row].calText
        
        celda.vwCeldaPadre.layer.masksToBounds = true
        celda.vwCeldaPadre.layer.cornerRadius = 10
        
        
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
        let item = categorias.count
        return item
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let item = collectionView.dequeueReusableCell(withReuseIdentifier: "itemCategoria", for: indexPath) as? CollectionRestaurantes
    
        item?.lblCategoria.text = categorias[indexPath.item]
        
        item?.vwViewP.layer.masksToBounds = true
        item?.vwViewP.layer.cornerRadius = 5
        
        return item!
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToDetalleLugar" {
            
            let viewControllerDestino =  segue.destination as! DetalleLugar
            viewControllerDestino.lugares = restaurantes[(tvRestaurantes.indexPathForSelectedRow?.row)!]
            
            let backItem = UIBarButtonItem()
            backItem.title = " "
            navigationItem.backBarButtonItem = backItem
            
            
            

        }
    }

    
    
    // se ejecuta despues de que des el click para que se renderee un nuevo viewController y antes de que se cree su instancia y aqui ponemos
    // lo que va a llevar la nueva instancia
    
    
   /* func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        // Obtener los alumnos que contengan un texto que se le parezca a searchText
        
        //restaurantesFiltrados = [] // inicializado
        
        for lugares in restaurantes {// recorre el arreglo alumnos y cada iteracion alumno tiene el valor del alumno en respectiva iteracion
            
            if lugares.nombre.lowercased().range(of: searchText.lowercased()) != nil {
                restaurantesFiltrados.append(lugares)
            }
        }
        
        self.actualizarTableViewRestaurantes()
        
    }*/
    
    func actualizarTableViewRestaurantes(){
        tvRestaurantes.reloadData()
    }
    
    
}
