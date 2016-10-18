//
//  FavoritosController.swift
//  QueHayObson
//
//  Created by Ernesto Salazar on 16/10/16.
//  Copyright © 2016 DreamTeamCo. All rights reserved.
//

import Foundation
import UIKit

class FavoritosController : UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet var tvFavoritos: UITableView!
    
    
    
    var favoritos : [Lugares] = [] // quiero una variable alumno del tipo arreglo de alumno e inicializalo y esta contenida en este viewcontroller.
    // alumnos a su vez tiene un arreglo de materias
    
    var favoritosFiltrados : [Lugares] = []
    
    override func viewDidLoad() { // aqui pones cosas que quieres que salgan incializadas
        
        // aqui hay un constructor
        // btw otra manera de hacerlo es : alumnos.append(Alumno(nombre: "José", apellidos: "Perez", matricula: "2312"... etc)
        
        /* codigo AAA */
        
        let lugar2 = Lugares(nombre: "Mochomos", horario: "13-00", direccion: "Lago Onega 1126", foto: "RMochomos", logo: "RMochomosLogo", corazon: "favoritosSeleccionado", categoria: "Restaurante",informacion: " Steakhouse y Restaurante de comida para el alma/surena.", opiniones: "Renee Angelica G. ï Enero 11, 2012Entrada: carpaccio de at˙n. Fuerte: Filete a las almendras. Postre: pie de mango. Vino: MT de BarÛn BalchÈ Esteban FernandezMayo 3 Totalmente recomendable el Rib Eye Mochomo's LauraMarzo 12 Rib eye a la tabla y estilo mochomos, muy rico. Arnold BacaJulio 16, 2015 RiquÌsimo Pidan Rib Eye a la Tabla Pepe GuerreroFebrero 24, 2015El rib eye de puerco yanyan")
        favoritos.append(lugar2)
        
        let lugar8 = Lugares(nombre: "Taco Fish", horario: "8:00 - 17:00", direccion: "Cananea (at Lago Superior)85040 Cd Obregon, Sonora", foto: "RTacoFish", logo: "RTacoFishLogo", corazon: "favoritosSeleccionado", categoria: "Cat_Restaurante",informacion: "Tacos de pescado y comida marina.", opiniones: "FULLENIOS TACO FISH ï Septiembre 18, 2014Lo m·s pedido, debes probarlo Fullenio, G¸erito Chesse, Quesadilla de CamarÛn, Quesadilla de Marlin y el de Pescado!!Heshu VasquezJunio 14, 2015 Taco fullenios y guerito cheese, adem·s de los tÌpicos de camarÛn y pescado capeado. Fullenios Taco FishAgosto 26, 2014 Apoco no quedaste lleno con un Fullenio? Solo en Taco Fish Zona Norte Ivan Martinezhace 2 semanasQ uesadillas de marlin, recomendado")
        favoritos.append(lugar8)
        
        let lugar10 = Lugares(nombre: "Taco Taco", horario: "12:00 - 00:00", direccion: "Avenida Miguel Alem·n 576, Zona Nte, 85000 Cd ObregÛn, Son.", foto: "RTacoTacoFondo", logo: "RTacoTacoLogo", corazon: "favoritosSeleccionado", categoria: "Cat_Restaurante",informacion: "Tacos", opiniones: "rafael posadasFebrero 19, 2015 El rib eye buenÌsimo, no le pide nada a ning˙n Restaurant de cortes. Esteban Fern·ndezMarzo 29, 2015 Los frijoles charros: buenÌsimos Oscar BarrazaJunio 15, 2013 Los mejores tacos que eh comido :) CarlosOctubre 19, 2010 Muy mala la carne! Exul FurJunio 9, 2012 Yummi, yummi!!! ")
        favoritos.append(lugar10)
        
        let lugar11 = Lugares(nombre: "La Justa Pizza", horario: "12:00 - 00:00", direccion: "Calle Caoba #931, Chapultepec, 85100 Cd ObregÛn, Son.", foto: "RJustaPizza", logo: "RLaJustaLogo", corazon: "favoritosSeleccionado", categoria: "Cat_Restaurante",informacion: "Esta sencilla pizzerÌa con ambiente juvenil sirve pastas, rollos de sushi y alitas, acompaÒados con cerveza.", opiniones: "Paola FigueroaJunio 14, 2014Y ps no es el mismo sabor de hace aÒos :( Mariana EncinasOctubre 29, 2014 Pizza boneless ? Francisco GarciaMayo 28 La pizza del patron es un crack mismo sabor q en los 90s. Son famosas desde antes de facebook Ana R. ï Febrero 1, 2015Deliciosa la pizza de boneless ?? y los tarros a $10")
        favoritos.append(lugar11)
        
        let lugar1 = Lugares(nombre: "Barezzito", horario: "Jueves a Sabado 21:00-2:00", direccion: "Sufragio Efectivo 920, Ciudad Obregon, Sonora", foto: "BBarezzitoFondo", logo: "BBarezzitoLogo", corazon: "favoritosSeleccionado", categoria: "Cat_Bares",informacion: "Club nocturno y Bar de cÛcteles", opiniones: "Muy atentos los meseros y todo el lugar agradable cool, no se me ha negado la entrada ya he ido varias veces son prejuicios de la gente o mala suerte jaja muy padre todo. Son demasiado elitistas y los meseros solo quieren sacarte dinero de mas; En ves de dar un servicio decente; En otros estados esta mucho mejor;Al menos por la noche son un ridiculos en la manera que seleccionan quien puede entrar a consumir Excelente lugar muy buen servicio y los meseros muy atentos!! Recomendado")
        favoritos.append(lugar1)
        
        let lugar6 = Lugares(nombre: "Red Spot Paintball", horario: "10:00 ñ 20:00", direccion: "Calle El Camino s/n, Cd ObregÛn, Son.", foto: "DGotchasFondo", logo: "DGotchasLogo", corazon: "favoritosSeleccionado", categoria: "Cat_Diversion",informacion: "Nuevo campo de Gotcha Red Spot. Puedes llevar a tu familia para que te vean practicar")
        favoritos.append(lugar6)
        
        let lugar7 = Lugares(nombre: "Bolerama Cd. ObregÛn", horario: "10:00 - 22:00", direccion: "", foto: "DBoleramaFondo", logo: "DBoleramaLogo", corazon: "favoritosSeleccionado", categoria: "Cat_Diversion",informacion: "En Bolerama somos m·s que un simple boliche, somos una empresa dedicada a brindar la m·xima diversiÛn a toda la familia, promoviendo la convivencia y el entretenimiento. Nos esmeramos para que cada vez que nos visites tengas una experiencia ˙nica, rodeado de la mejor atenciÛn y servicio.", opiniones: " Boliche222 ìgran sitio para disfrutarî Ramsesxxx ìque bueno que ya abrieron uno por acaî Simi88 ìLe falta refrigeraciÛnÖ graciasî")
        favoritos.append(lugar7)
        
       
        
        favoritosFiltrados = favoritos
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return favoritosFiltrados.count // contar de manera dinamica el numero de elementos que hay en alumnos ... que seran representados como renglones
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaFavoritos") as! CeldaFavoritosController
        // as con signo de interrogacion es que le aseguras que celdaAlumno puede transformarse en tipo celdaAlumnoController, estamos haciendo un casting
        
        celda.lblNombreLugar.text = favoritosFiltrados[(indexPath as NSIndexPath).row].nombre
        celda.lblHorario.text = favoritosFiltrados[(indexPath as NSIndexPath).row].horario
        celda.lblDireccion.text = favoritosFiltrados[(indexPath as NSIndexPath).row].direccion
        celda.imgFondoCelda.image = favoritosFiltrados[(indexPath as NSIndexPath).row].imgFoto
        celda.lblLogoLugar.image = favoritosFiltrados[(indexPath as NSIndexPath).row].imgLogo
        celda.imgCorazon.image = favoritosFiltrados[(indexPath as NSIndexPath).row].imgCorazon
        celda.imgCategoria.image = favoritosFiltrados[(indexPath as NSIndexPath).row].imgCategoria
        
        return celda
        
    }
    
    // se ejecuta despues de que des el click para que se renderee un nuevo viewController y antes de que se cree su instancia y aqui ponemos
    // lo que va a llevar la nueva instancia
    
    // prepare for segue pretende preparar para ejecutar el segue (un cambio de ventanas)
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // que sigue se esta ejecutando? ( lo obtienes de los parametros de la funcion.. UIStoryboardsegue)
        if segue.identifier == "goToDetalle" { // en caso de que sea el sigue de materias entonces...
            
            // lo haces para tener acceso a traves de la variable materiasController a los elementos del destino
            // que es en este caso un ViewControlle
            
            let detalleLugarController = segue.destination as! DetalleLugar
            
            
            // haces un casting // ViewController = AAB
            
            // el alumno que seleccione , obten el indice,
          
            detalleLugarController.lugares = favoritosFiltrados[(tvFavoritos.indexPathForSelectedRow! as NSIndexPath).row]  // alumno en la posicion seleccionada de la tabla va a ser ahora igual a materiaController
        }
        
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        // Obtener los alumnos que contengan un texto que se le parezca a searchText
        
        favoritosFiltrados = [] // inicializado
        
        for lugares in favoritos {// recorre el arreglo alumnos y cada iteracion alumno tiene el valor del alumno en respectiva iteracion
            
            if lugares.nombre.lowercased().range(of: searchText.lowercased()) != nil {
                favoritosFiltrados.append(lugares)
            }
        }
        
        tvFavoritos.reloadData()
        
    }

    
}

