//
//  Eventos.swift
//  QueHayObson
//
//  Created by Ernesto Salazar on 18/10/16.
//  Copyright © 2016 DreamTeamCo. All rights reserved.
//

import Foundation
import UIKit

class Eventos {
    
    var nombre: String
    var horario : String
    var costo : String
    var direccion: String
    
    var hashtag : String?
    
    var logo : String?
    var imgLogo : UIImage?
    
    var fondo : String?
    var imgFondo : UIImage?
    
    
    var corazon : String?
    var imgCorazon : UIImage?
    
    
    var categoria : String?
    var imgCategoria : UIImage?
    
    var informacion : String?
    
    
    init(nombre:String, horario: String, costo: String, direccion: String,hashtag : String, fondo: String, logo: String, corazon: String, categoria: String){
        
        self.nombre = nombre
        self.horario = horario
        self.costo = costo
        self.direccion = direccion
        self.hashtag = hashtag

        
        self.logo = logo
        imgLogo = UIImage(named: logo)
        self.fondo = fondo
        imgFondo = UIImage(named: fondo)
        self.corazon = corazon
        imgCorazon = UIImage(named: corazon)
        self.categoria = categoria
        imgCategoria = UIImage(named: categoria)
        
        
    }
    init(nombre:String, horario: String, costo: String, direccion: String,hashtag : String, fondo: String, logo: String, corazon: String, categoria: String, informacion: String){
        
        self.nombre = nombre
        self.horario = horario
        self.costo = costo
        self.direccion = direccion
        self.hashtag = hashtag
        
        self.logo = logo
        imgLogo = UIImage(named: logo)
        self.fondo = fondo
        imgFondo = UIImage(named: fondo)
        self.corazon = corazon
        imgCorazon = UIImage(named: corazon)
        self.categoria = categoria
        imgCategoria = UIImage(named: categoria)
        
        self.informacion = informacion
        
    }
    
    
}
