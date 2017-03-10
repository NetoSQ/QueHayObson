//
//  BaresController.swift
//  QueHayObson
//
//  Created by Ernesto Salazar on 17/10/16.
//  Copyright © 2016 DreamTeamCo. All rights reserved.
//

import Foundation
import UIKit

class BaresControllerController : UIViewController, UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate{
    
    @IBOutlet var tvBares: UITableView!
    
    
    
    var bares : [Lugares] = [] // quiero una variable alumno del tipo arreglo de alumno e inicializalo y esta contenida en este viewcontroller.
    // alumnos a su vez tiene un arreglo de materias
    
    var baresFiltrados : [Lugares] = []
    
    override func viewDidLoad() { // aqui pones cosas que quieres que salgan incializadas
        
        // aqui hay un constructor
        // btw otra manera de hacerlo es : alumnos.append(Alumno(nombre: "José", apellidos: "Perez", matricula: "2312"... etc)
        
        /* codigo AAA */
        
    
        let lugar1 = Lugares(nombre: "Barezzito", horario: "Jueves a Sabado 21:00-2:00", direccion: "Sufragio Efectivo 920, Ciudad Obregon, Sonora", foto: "BBarezzitoFondo", logo: "BBarezzitoLogo", corazon: "favoritosSeleccionado", categoria: "Cat_Bares",informacion: "Club nocturno y Bar de cÛcteles", opiniones: "Muy atentos los meseros y todo el lugar agradable cool, no se me ha negado la entrada ya he ido varias veces son prejuicios de la gente o mala suerte jaja muy padre todo. Son demasiado elitistas y los meseros solo quieren sacarte dinero de mas; En ves de dar un servicio decente; En otros estados esta mucho mejor;Al menos por la noche son un ridiculos en la manera que seleccionan quien puede entrar a consumir Excelente lugar muy buen servicio y los meseros muy atentos!! Recomendado")
        
        
        let lugar2 = Lugares(nombre: "La Taberna de Moe", horario: "Miercoles a Sabado 19:00ñ2:00", direccion: "Vicente Guerrero 310, Ciudad ObregÛn, Sonora", foto: "BTabernaFondo", logo: "BLaTabernaLogo", corazon: "favoritos", categoria: "Cat_Bares",informacion: "Karaoke Bar, Bar y Restaurante", opiniones: "Muy buen ambiente cuando hay karaoke Fuga para La Taberna de Moe Que empieze la fiesta , Hoy se bebe, canta y bailaaaa")
        
        
        let lugar3 = Lugares(nombre: "Pool House", horario: "Miercoles a Sabado 19:00-2:00", direccion: "Miguel Alem·n (entre 6 de Abril y Nicol·s Bravo), Cd Obregon, Sonora", foto: "BPoolHouseFondo", logo: "BPoolHouseLogo", corazon: "favoritos", categoria: "Cat_Bares",informacion: "Billar", opiniones: "Me enkanta este lugar.... siempre hay muy buen ambiente..... y las bebidas rikisimas…m uy agradable sitio pasa convivir y pasar un rato agradable con amigos, acompaÒado de buena m˙sica y ambiente. Aparte de la michelada el petroleo tmb esta muy rico!! Hay buena musica :))")
        
        
        let lugar4 = Lugares(nombre: "La Playa", horario: "Jueves a Sabado 21:00-2:00", direccion: "Jalisco esquina Yaqui, Norte, Urb. No. 4, 85010 Ciudad ObregÛn, Sonora", foto: "BPlayaFondo", logo: "BPlayaLogo", corazon: "favoritos", categoria: "Cat_Bares",informacion: "Club nocturno y Antro", opiniones: "El mejor antro de la ciudad jaja Buenos DJ's Los litros son mas hielos que alcohol")
        
        
        let lugar5 = Lugares(nombre: "El Cuartel", horario: "Jueves a Sabado 21:00-2:00", direccion: "Miguel Alem·n (Entre Hidalgo & Allende) Cd Obregon, Sonora", foto: "BCuartelFondo", logo: "BCuartelLogo", corazon: "favoritos", categoria: "Cat_Bares",informacion: "Bar y Club nocturno", opiniones: "Esta pequeÒo, pero tiene buenas luces. Uno de los mejores lugares en la cuidad!!! No aceptan pago con tarjeta.")
        
        let lugar6 = Lugares(nombre: "La Patrona", horario: "Martes a Sabado 17:00-2:00", direccion: "Miguel Aleman 111 Norte Ciudad ObregÛn", foto: "BPatronaFondo", logo: "BPatronaLogo", corazon: "favoritos", categoria: "Cat_Bares",informacion: "Bar de cocteles y Bar", opiniones: "RiquÌsimos bebidas y un ambiente 1000% agradable.. VolverÈ pronto..... Muy buen ambiente para pasarla.agusto con amigos y una buena bebida.. La patrona exelente lugar !! El mejor de la ciudad...Exelente musica y tragos")
        
        
        let lugar7 = Lugares(nombre: "Lord Pub", horario: "Miercoles a Sabado 17:00-2:00", direccion: "Av. Miguel Alem·n 555, Centro, 85000 Cd ObregÛn, Son.", foto: "BLordPubFondo", logo: "BLordPubLogo", corazon: "favoritosSeleccionado", categoria: "Cat_Bares",informacion: "Pub, Restaurante y Sports Bar", opiniones: "prueben los nachos lord, estan riquisimos La bandeja de shots!! 50 shots por 100 pesos!! Excelente para pasar un buen rato con amigos, buena musica y buenos tragos. los shots s˙per recomendables.")
        
        
        let lugar8 = Lugares(nombre: "El Mojito", horario: "Jueves a Sabado 21:00-2:00", direccion: "5 de Febrero 154. Centro.. C.P. 85000,Ciudad Obregon, Sonora.", foto: "BMojitoFondo", logo: "BMojitoLogo", corazon: "favoritos", categoria: "Cat_Bares",informacion: "Bar al aire libre", opiniones: "PÈsimo servicio los meseros buenos para nada. Me la pase super bien y el servicio ni se diga de lo mejor me encanto!!! Muchas gracias de verdad. Estuvo muy padre la noche! Muy buena musica")
        
        
        let lugar9 = Lugares(nombre: "El Negai", horario: "Jueves a Sabado 21:00-2:00", direccion: "veracruz y cananea, Ciudad ObregÛn, Sonora, Mexico", foto: "BNegaiFondo", logo: "BNegaiLogo", corazon: "favoritos", categoria: "Cat_Bares",informacion: "Restaurante familiar, Restaurante asi·tico, Bar", opiniones: "PedÌ un agasajo, un kilo de lobina, nada de callo de hacha, un poco de pulpo y como 3 camarones, mucha cebolla y nada de aguacate. Seg˙n el men˙ debe de traer todo esto. Perfeccion en la extencion de la palabra, me encanto estar ahÌ, muy buen servicio, el ambiente ni se diga y los meseros y bar tender muy amables y activos siempre, todo muy rico... Muchas felicidades. Me encanta su cocina la verdad excelente zason , amplia variedad de platillos y todos riquisimos")
        
        
        let lugar10 = Lugares(nombre: "Bolerama", horario: "Lunes a Sabado 10:00-22:00", direccion: "Miguel Alem·n Norte # 720 (e/ Tetabiate y Cajeme) 85010 Cd Obregon, Sonora, MÈxico", foto: "BBoleramaFondo", logo: "BBoleramaLogo", corazon: "favoritos", categoria: "Cat_Bares",informacion: "Bowling", opiniones: "Es muy divertido. Especial para pasar un buen rato jugando y comiendo. La remodelaciÛn quedo super bien! Esta padrÌsimo y se esta bien agusto")
            
        bares.append(lugar1)
        bares.append(lugar2)
        bares.append(lugar3)
        bares.append(lugar4)
        bares.append(lugar5)
        bares.append(lugar6)
        bares.append(lugar7)
        bares.append(lugar8)
        bares.append(lugar9)
        bares.append(lugar10)
        
        
        
        
        baresFiltrados = bares
        
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return baresFiltrados.count // contar de manera dinamica el numero de elementos que hay en alumnos ... que seran representados como renglones
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celda = tableView.dequeueReusableCell(withIdentifier: "CeldaBares") as! CeldaBaresController
        
        // as con signo de interrogacion es que le aseguras que celdaAlumno puede transformarse en tipo celdaAlumnoController, estamos haciendo un casting
        
        celda.lblNombreLugar.text = baresFiltrados[(indexPath as NSIndexPath).row].nombre
        celda.lblHorario.text = baresFiltrados[(indexPath as NSIndexPath).row].horario
        celda.lblDireccion.text = baresFiltrados[(indexPath as NSIndexPath).row].direccion
        celda.imgFondoCelda.image = baresFiltrados[(indexPath as NSIndexPath).row].imgFoto
        celda.lblLogoLugar.image = baresFiltrados[(indexPath as NSIndexPath).row].imgLogo
        celda.imgCorazon.image = baresFiltrados[(indexPath as NSIndexPath).row].imgCorazon
        celda.imgCategoria.image = baresFiltrados[(indexPath as NSIndexPath).row].imgCategoria
        
        return celda
        
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
            
            detalleLugarController.lugares = bares[(tvBares.indexPathForSelectedRow! as NSIndexPath).row]
            
            // alumno en la posicion seleccionada de la tabla va a ser ahora igual a materiaController
        }
        
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        // Obtener los alumnos que contengan un texto que se le parezca a searchText
        
        baresFiltrados = [] // inicializado
        
        for lugares in bares {// recorre el arreglo alumnos y cada iteracion alumno tiene el valor del alumno en respectiva iteracion
            
            if lugares.nombre.lowercased().range(of: searchText.lowercased()) != nil {
                baresFiltrados.append(lugares)
            }
        }
        
        tvBares.reloadData()
        
    }
    
    
}

