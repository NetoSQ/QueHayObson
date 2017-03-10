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
    

    @IBOutlet weak var imgLogo: UIImageView!
    @IBOutlet weak var lblNombreLugar: UILabel!
    @IBOutlet weak var lblHorario: UILabel!
    @IBOutlet weak var imgFavorito: UIImageView!
    @IBOutlet weak var imgCategoria: UIImageView!
    @IBOutlet weak var imgFondo: UIImageView!
    @IBOutlet weak var lblInformacion: UILabel!
    @IBOutlet weak var lblDireccion: UILabel!
    
    override func viewDidLoad() {
        
        
        
        lblNombreLugar.text = lugares!.nombre
        
        self.title = lblNombreLugar.text
        
        lblHorario.text = lugares!.horario
        imgCategoria.image = lugares!.imgCategoria
        imgFavorito.image = lugares!.imgCorazon
        imgLogo.image = lugares!.imgLogo
        imgFondo.image = lugares!.imgFoto
        lblInformacion.text = lugares!.informacion
        lblDireccion.text = lugares!.direccion
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
