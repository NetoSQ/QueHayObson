//
//  DetalleEventos.swift
//  QueHayObson
//
//  Created by Ernesto Salazar on 18/10/16.
//  Copyright © 2016 DreamTeamCo. All rights reserved.
//

import Foundation
import UIKit

class DetalleEventos: UIViewController {
    
    var eventos : Eventos?
    
    
    @IBOutlet weak var imgLogo: UIImageView!
    @IBOutlet weak var lblNombreLugar: UILabel!
    @IBOutlet weak var lblHorario: UILabel!
    @IBOutlet weak var imgFavorito: UIImageView!
    @IBOutlet weak var imgCategoria: UIImageView!
    @IBOutlet weak var imgFondo: UIImageView!
    @IBOutlet weak var lblInformacion: UILabel!
    @IBOutlet weak var lblDireccion: UILabel!
    @IBOutlet weak var lblbCosto: UILabel!
    @IBOutlet weak var lblHashtag: UILabel!
    
    override func viewDidLoad() {
        
        
        
        lblNombreLugar.text = eventos!.nombre
        
        self.title = lblNombreLugar.text
        
        lblHorario.text = eventos!.horario
        imgCategoria.image = eventos!.imgCategoria
        imgFavorito.image = eventos!.imgCorazon
        imgLogo.image = eventos!.imgLogo
        imgFondo.image = eventos!.imgFondo
        lblInformacion.text = eventos!.informacion
        lblDireccion.text = eventos!.direccion
        lblbCosto.text = eventos!.costo
        lblHashtag.text = eventos!.hashtag
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
