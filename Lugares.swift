//
//  Lugares.swift
//  QueHayObson
//
//  Created by Ernesto Salazar on 15/10/16.
//  Copyright © 2016 DreamTeamCo. All rights reserved.
//

/*import Foundation
import UIKit
import Alamofire

class Lugares {
    
    var imagenesCargadas = 0
    
    var imagenes : [UIImage] = []
    
    var nombre: String
    var horario : String
    var direccion : String
    
   // var logo : String?
   // var imgLogo : UIImage?
    
    //var foto : String?
   // var imgFoto : UIImage?
    
    
   // var corazon : String?
   // var imgCorazon : UIImage?
    
    
   // var categoria : String?
   // var imgCategoria : UIImage?
    
    var informacion : String?
    var opiniones : String?
    
    var restCategoria : String?
    
    
    
   init(nombre:String, horario: String, direccion: String, imagenes : [UIImage]){
    
    
        self.nombre = nombre
        self.horario = horario
        self.direccion = direccion
        self.imagenes = imagenes
    
        
        
    }
    
   /*  init(nombre:String, horario: String, direccion: String, foto: String, logo: String, corazon: String, categoria: String, informacion: String){
        
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
        
        
    }
    
    init(nombre:String, horario: String, direccion: String, foto: String, logo: String, corazon: String, categoria: String, informacion: String, opiniones: String, restCategoria: String){
        
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
        
        self.restCategoria = restCategoria
        
    }*/
    
    init(desdeDiccionario diccionario: NSDictionary, callback : @escaping () -> Void){ // constructort
        
        
        if let lugares = diccionario.value(forKey: "lugares") as? NSDictionary{
            //Esto va a cambiar cuando hagan la BD
            
            if let nombre = lugares.value(forKey: "nombre_lugar") as? NSArray {
                if let nombreLugar = nombre[0] as? String { // AQUI!!
                    self.nombre = nombreLugar
                }
            }
            
            if let horario = lugares.value(forKey: "horario_lugar") as? NSArray {
                if let horarioLugar = horario[0] as? String {
                    self.horario = horarioLugar
                }
            }
            
            if let direccion = lugares.value(forKey: "horario_lugar") as? NSArray {
                if let direccionLugar = direccion[0] as? String {
                    self.direccion = direccionLugar
                }
            }
            
            if let informacion = lugares.value(forKey: "_lugar") as? NSArray {
                if let informacionLugar = informacion[0] as? String {
                    self.informacion = informacionLugar
                }
            }
            
            if let opiniones = lugares.value(forKey: "punto_terror") as? NSArray {
                if let opinionesLugar = opiniones[0] as? String {
                    self.opiniones = opinionesLugar
                }
            }
            
            if let restCategoria = lugares.value(forKey: "punto_accion") as? NSArray {
                if let restCategoriaLugar = restCategoria[0] as? String {
                    self.restCategoria = restCategoriaLugar
                }
            }
            
        }
        
        if let attachments = diccionario.value(forKey: "attachments") as? NSArray{
            
            for attachment in attachments { // la de la izq es nueva variable... la de la derecha es el attachments anterior
                if let diccionarioAttachment = attachment as? NSDictionary {
                    if let urlImagen = diccionarioAttachment.value(forKey: "url") as? String {
                        Alamofire.request("https://moodiedt.azurewebsites.net\(urlImagen)").responseData { response in
                            self.imagenesCargadas += 1
                            if let data = response.result.value {
                                let image = UIImage(data: data)
                                self.imagenes.append(image!)
                            }
                            if self.imagenesCargadas >= 8 {
                                callback()
                                //Avisenle al ViewController qu ya cargué todo
                            }
                        }
                    }
                }
            }
        }
        
    }
    
}*/
