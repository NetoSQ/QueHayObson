//
//  Lugares.swift
//  QueHayObson
//
//  Created by Ernesto Salazar on 15/10/16.
//  Copyright © 2016 DreamTeamCo. All rights reserved.
//

import Foundation
import UIKit
import Alamofire

class Lugares {
    
    var id : Int
    
    
    var nombre: String
    var direccion : String
    var telefono : String
    var fecha1 : String
    var horario1 : String
    var descripcion : String
    var calificacion : Float
    var calText : String
    
    
    var foto : String?
    var imgFoto : UIImage?
    var menu : String?
    var imgMenu : UIImage?
    
    
    var corazon : String?
    var imgCorazon : UIImage?
    
    
    var categoria : String?
    var imgCategoria : UIImage?
    
    var informacion : String?
    var opiniones : String?
    
    var restCategoria : String?
    
    
    
   /*init(nombre:String, horario: String, direccion: String, imagenes : [UIImage]){
    
    
        self.nombre = nombre
        self.horario = horario
        self.direccion = direccion
        self.imagenes = imagenes
    
        
        
    }
    
    init(nombre:String, horario: String, direccion: String, foto: String, logo: String, corazon: String, categoria: String, informacion: String){
        
        self.nombre = nombre
        self.horario = horario
        self.direccion = direccion
        
        self.logo = logo
        imgLogo = UIImage(named: logo)
        self.foto = foto
        imgFoto = UIImage(named: foto)
        self.corazon = corazon
        imgCorazon = UIImage(named: corazon)
        self.categoria = categoria
        imgCategoria = UIImage(named: categoria)
        
        self.informacion = informacion
        
    }
    
    init(nombre:String, horario: String, direccion: String, foto: String, logo: String, corazon: String, categoria: String, informacion: String, restCategoria: String){
        
        self.nombre = nombre
        self.horario = horario
        self.direccion = direccion
        
        self.logo = logo
        imgLogo = UIImage(named: logo)
        self.foto = foto
        imgFoto = UIImage(named: foto)
        self.corazon = corazon
        imgCorazon = UIImage(named: corazon)
        self.categoria = categoria
        imgCategoria = UIImage(named: categoria)
        
        self.informacion = informacion
        
        self.restCategoria = restCategoria
        
    }
    
    init(nombre:String, horario: String, direccion: String, foto: String, logo: String, corazon: String, categoria: String, informacion: String, opiniones: String){
        
        self.nombre = nombre
        self.horario = horario
        self.direccion = direccion
        
        self.logo = logo
        imgLogo = UIImage(named: logo)
        self.foto = foto
        imgFoto = UIImage(named: foto)
        self.corazon = corazon
        imgCorazon = UIImage(named: corazon)
        self.categoria = categoria
        imgCategoria = UIImage(named: categoria)
        
        self.informacion = informacion
        self.opiniones  = opiniones
        
        
    }*/
    
    /*init(nombre:String, direccion: String, telefono : String, fecha1 : String, horario1 : String, descripcion : String, calificacion : Float, foto: String, menu: String, corazon: String, categoria: String, informacion: String, opiniones: String, restCategoria: String){
        
        
        self.nombre = nombre
        self.direccion = direccion
        self.telefono = telefono
        self.fecha1 = fecha1
        self.horario1 = horario1
        self.descripcion = descripcion
        self.calificacion = calificacion
        
        self.menu = menu
        imgMenu = UIImage(named: menu)
        self.foto = foto
        imgFoto = UIImage(named: foto)
        self.corazon = corazon
        imgCorazon = UIImage(named: corazon)
        self.categoria = categoria
        imgCategoria = UIImage(named: categoria)
        
        self.informacion = informacion
        self.opiniones  = opiniones
        
        self.restCategoria = restCategoria
        
    }*/
    
    init(desdeDiccionario diccionario: NSDictionary){ // constructor
        
        
        id =  0
        nombre = ""
        direccion = ""
        telefono = ""
        fecha1 = ""
        horario1 = ""
        descripcion = ""
        calificacion = 0
        calText = ""
        
        if let idLugar = diccionario.value(forKey: "idRestaurant") as? Int{
            id = idLugar
            if let nombreLugar = diccionario.value(forKey: "nombre") as? String{
                nombre = nombreLugar
            }
            if let direccionLugar = diccionario.value(forKey: "direccion") as? String{
                direccion = direccionLugar
            }
            if let telefonoLugar = diccionario.value(forKey: "telefono") as? String{
                telefono = telefonoLugar
            }
            if let fecha1Lugar = diccionario.value(forKey: "fecha1") as? String{
                fecha1 = fecha1Lugar
            }
            if let horario1Lugar = diccionario.value(forKey: "horario1") as? String{
                horario1 = horario1Lugar
            }
            if let descripcionLugar = diccionario.value(forKey: "descripcion") as? String{
                descripcion = descripcionLugar
            }
            if let calificacionLugar = diccionario.value(forKey: "calificacion") as? Float{
                calificacion = calificacionLugar
            }
            if let urlImagenMenu = diccionario.value(forKey: "imgMenu") as? String {
                menu = urlImagenMenu
                Alamofire.request("https://quehay.azurewebsites.net/\(urlImagenMenu)").responseData { response in
                    if let data = response.result.value {
                        let image = UIImage(data: data)
                        self.imgMenu = image
                    }
                }
            }
            if let urlImagenFoto = diccionario.value(forKey: "imgFoto") as? String {
                Alamofire.request("https://quehay.azurewebsites.net/\(urlImagenFoto)").responseData { response in
                    if let data1 = response.result.value {
                        let image1 = UIImage(data: data1)
                        self.imgFoto = image1
                    }
                }
            }
        }
    }
}
