//
//  Lugares.swift
//  QueHayObson
//
//  Created by Ernesto Salazar on 15/10/16.
//  Copyright © 2016 DreamTeamCo. All rights reserved.
//

import Foundation
import UIKit

class Lugares {
    
    var nombre: String
    var horario : String
    var direccion : String
    
    var logo : String?
    var imgLogo : UIImage?
    
    var foto : String?
    var imgFoto : UIImage?
    
    
    var corazon : String?
    var imgCorazon : UIImage?
    
    
    var categoria : String?
    var imgCategoria : UIImage?
    
    var informacion : String?
    var opiniones : String?
    
    
    init(nombre:String, horario: String, direccion: String, foto: String, logo: String, corazon: String, categoria: String){
        
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
    
    
}
