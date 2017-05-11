//
//  DetalleLugar.swift
//  QueHayObson
//
//  Created by Ernesto Salazar on 16/10/16.
//  Copyright © 2016 DreamTeamCo. All rights reserved.
//

import Foundation
import UIKit


class DetalleLugar: UIViewController {
    
    var lugares : Lugares?
    var titulo = ""
    
    @IBOutlet weak var imgLugar: UIImageView!
    @IBOutlet weak var lblHorario: UILabel!
    @IBOutlet weak var imgFondo: UIImageView!
    @IBOutlet weak var lblInformacion: UILabel!
    @IBOutlet weak var lblDireccion: UILabel!
    @IBOutlet weak var imgDetalle: UIImageView!
    @IBOutlet weak var lblTelefono: UILabel!
    
    @IBOutlet weak var vwPadre: UIView!
    @IBOutlet weak var vwCalificacion: UIView!
    @IBOutlet weak var vwSubMenu: UIView!
    @IBOutlet weak var vwRedes: UIView!
    @IBOutlet weak var vwHorario: UIView!
    @IBOutlet weak var vwDescripcion: UIView!
    @IBOutlet weak var vwDireccion: UIView!
    @IBOutlet weak var vwTelefono: UIView!
    
    override func viewDidLoad() {
        
        
        
        
        self.navigationItem.title = lugares?.nombre
        
        
        self.lblHorario.text = lugares?.horario1
        self.lblInformacion.text = lugares?.descripcion
        self.lblDireccion.text = lugares?.direccion
        self.imgLugar.image = lugares?.imgFoto
        self.imgDetalle.image = lugares?.imgMenu
        self.lblTelefono.text = lugares?.telefono
        
            
        
        
        
        
        
        vwCalificacion.layer.masksToBounds = true
        vwCalificacion.layer.cornerRadius = 5
        vwSubMenu.layer.masksToBounds = true
        vwSubMenu.layer.cornerRadius = 5
        vwRedes.layer.masksToBounds = true
        vwRedes.layer.cornerRadius = 5
        vwHorario.layer.masksToBounds = true
        vwHorario.layer.cornerRadius = 5
        vwDescripcion.layer.masksToBounds = true
        vwDescripcion.layer.cornerRadius = 5
        vwDireccion.layer.masksToBounds = true
        vwDireccion.layer.cornerRadius = 5
        vwTelefono.layer.masksToBounds = true
        vwTelefono.layer.cornerRadius = 5
        vwPadre.layer.masksToBounds = true
        vwPadre.layer.cornerRadius = 10
        
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
