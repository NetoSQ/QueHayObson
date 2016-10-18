//
//  EventosController.swift
//  QueHayObson
//
//  Created by Ernesto Salazar on 16/10/16.
//  Copyright © 2016 DreamTeamCo. All rights reserved.
//

import Foundation
import UIKit

class EventosController: UIViewController, UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate{
    
    @IBOutlet var tvEventos: UITableView!
    
    
    
    var eventos : [Eventos] = [] // quiero una variable alumno del tipo arreglo de alumno e inicializalo y esta contenida en este viewcontroller.
    // alumnos a su vez tiene un arreglo de materias
    
    var eventosFiltrados : [Eventos] = []
    
    override func viewDidLoad() { // aqui pones cosas que quieres que salgan incializadas
        
        // aqui hay un constructor
        // btw otra manera de hacerlo es : alumnos.append(Alumno(nombre: "José", apellidos: "Perez", matricula: "2312"... etc)
        
        /* codigo AAA */
        
        let lugar1 = Eventos(nombre: "Tributo a Mago de Oz", horario: "21:00 PM ñ 1:45 AM", costo: "", direccion: "Calle Michoac·n, 85140", hashtag: " #Viva el Rock #NoRompasMasMiPobreCorazon #Mago>Ratablanca", fondo: "EMagoFondo", logo: "EMagoLogo", corazon: "favoritos", categoria: "Cat_Eventos", informacion: "Porque uds. lo pidieron, nos vamos hacia la tierra de oz, todos °°°° todas las edades °°° no te quedes sin escuchar las mejores canciones del mago, interpretados por la sombra de oz, adem·s tributo a rata blanca por Soul of fire, y banda(s) local(es)")
        eventos.append(lugar1)
        
        let lugar2 = Eventos(nombre: " Caloncho en ObregÛn", horario: "17:00 PMñ 22:00 PM", costo: "", direccion: "Arboleda de la Casa de la Casa de la Cultura, frente a la Laguna del N·inari.",  hashtag: " #TodosInvitados #ApoyemosElTalento #QueHayObsonPatrocinios", fondo: "ECalonchoFondo", logo: "ECalonchoLogo", corazon: "favoritos", categoria: "Cat_Eventos", informacion: "Concierto de pop-rock.")
        eventos.append(lugar2)
        
        let lugar4 = Eventos(nombre: " Carlos Pieto y Edison Quintana en Festival de las Artes ITSON", horario: "18. octubre 2016 - 20:00", costo: "", direccion: "5 de febrero #818 Sur, 85000", hashtag: " #AbuelitosInvitados #NoSoloParaLlorones #LaVidaEsBellaConCarlosPrieto", fondo: "EReunionFondo", logo: "EReunionLogo", corazon: "favoritosSeleccionado", categoria: "Cat_Eventos", informacion: "El Instituto TecnolÛgico de Sonora a travÈs de la DirecciÛn de ExtensiÛn Universitaria y el Departamento de ExtensiÛn de la Cultura en el marco del Festival de las Artes ITSON 2016 invita a la presentaciÛn de libro y recital *** el cellista Carlos Prieto y el Pianista Edison Quintana. Evento en coordinaciÛn *** el Seminario de Cultura Mexicana, CorresponsalÌa Navojoa y la DirecciÛn de Cultura Municipal de Cajeme.")
        eventos.append(lugar4)
        
        let lugar5 = Eventos(nombre: "Enanitos Verdes en ObregÛn", horario: " Desde 22. octubre 2016 - 18:00 hasta 23. octubre 2016 - 21:00", costo: "", direccion: " Francisco Eusebio Kino y Casa Blanca, 85130", hashtag: " #NoTePeinesEnLaCama #OneHitWonder #CervezaGratisPatrocinada ", fondo: "EEnanitosFondo", logo: "EEnanitosLogo", corazon: "favoritos", categoria: "Cat_Eventos", informacion: " ENANITOS VERDES , la banda Argentina m·s exitosa regresa a CD. Obregon *** Tic Tac Tour 2016 para deleitar a sus fans *** sus Èxitos y nuevos temas.")
        eventos.append(lugar5)
        
        
        
        let lugar6 = Eventos(nombre: " Marco Antonio SolÌs en Ciudad ObregÛn ", horario: "19:00-1:00 AM", costo: "", direccion: " Francisco Eusebio Kino, San Juan Campistrano, 85134 ",  hashtag: " #ElBukiManda #TodosSomosMarcoAntonioRegil #QueSeHaga", fondo: "EMarcoFondo", logo: "EMarcoLogo", corazon: "favoritos", categoria: "Cat_Eventos", informacion: " La tan esperada fecha en la que Marco Antonio SolÌs presentar· en ObregÛn su Amor Amor Tour al fin ha sido revelada, siendo el viernes 7 de octubre cuando El Buki interpretar· sus m·s sonados Èxitos, entre los que se encuentran A Donde Vamos a Parar, El Perdedor y Si no te Hubieras Ido, entre muchos otros m·s, la Arena ITSON ser· donde presentar· este sensacional concierto.")
        eventos.append(lugar6)
        
        let lugar7 = Eventos(nombre: "Anime Monster", horario: "16:00 Hasta 21:00", costo: "", direccion: " Chihuahua No. 1875 Sur Col. Campestre, 85160", hashtag: "#LlevenseSuOutfitDeInuyasha #KokoroNoUshiha #KakashiSensei4EverTeam", fondo: "EAnimeFondo", logo: "EAnimeLogo", corazon: "favoritos", categoria: "Cat_Eventos", informacion: "Este aÒo decidimos dedicarle una edicion especial al personage mas importante e incomprendido de toda historia: EL VILLANO. Asi que te invitamos a preparar ese cosplay de villano que tanto tiempo tenias *** ganas de aserlo, pero que por alguna u otra razon no lo llevaste a cabo.")
        eventos.append(lugar7)
        
        let lugar8 = Eventos(nombre: " II Encuentro de Jovenes Booktubers en Cajeme", horario: " Desde 15. octubre 2016 - 15:00 Hasta 20:00", costo: "", direccion: "5 de febrero esquina con Allende, 85000", hashtag: " #FugaALeer #UnResumensito #HipstersComeHere", fondo: "ELibrosFondo", logo: "ELibrosLogo", corazon: "favoritos", categoria: "Cat_Eventos", informacion: " Evento cultural de gran calibre. expositories que nos acompañan: Nath Rodriguez Gabriela Castillo (Ciudad de Mexico) Lizeth Lopez (Hermosillo, Sonora) Jorge Andres Mendoza (Monterrey, Nuevo Leon) AndrÈs Campos (Ciudad Obregon, Sonora)")
        eventos.append(lugar8)
            
            
            
        
        eventosFiltrados = eventos
        
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return eventosFiltrados.count // contar de manera dinamica el numero de elementos que hay en alumnos ... que seran representados como renglones
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celda = tableView.dequeueReusableCell(withIdentifier: "CeldaEventos") as! CeldaEventosController
        // as con signo de interrogacion es que le aseguras que celdaAlumno puede transformarse en tipo celdaAlumnoController, estamos haciendo un casting
        
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
