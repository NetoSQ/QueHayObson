//
//  RestaurantesController.swift
//  QueHayObson
//
//  Created by Ernesto Salazar on 16/10/16.
//  Copyright © 2016 DreamTeamCo. All rights reserved.
//

import Foundation
import UIKit

class RestaurantesController : UIViewController, UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate{
    
    @IBOutlet var tvRestaurantes: UITableView!
    
    
    
    var restaurantes : [Lugares] = [] // quiero una variable alumno del tipo arreglo de alumno e inicializalo y esta contenida en este viewcontroller.
    // alumnos a su vez tiene un arreglo de materias
    
    var restaurantesFiltrados : [Lugares] = []
    
    override func viewDidLoad() { // aqui pones cosas que quieres que salgan incializadas
        
        // aqui hay un constructor
        // btw otra manera de hacerlo es : alumnos.append(Alumno(nombre: "José", apellidos: "Perez", matricula: "2312"... etc)
        
        /* codigo AAA */
        
        let lugar1 = Lugares(nombre: "Tacos Cebosos de Fatima", horario: "3:00 - 8:00", direccion: " Calle Tamaulipas 675, Urb. No. 5, 85010 Cd ObregÛn, Son.", foto: "RFatimaFondo", logo: "RFatimaLogo", corazon: "favoritos", categoria: "Cat_Restaurante",informacion: "01 644 172 1832", opiniones: " Jules p. ï Agosto 19, 2014Los dorados buenÌsimos... Los mejores tacos de ObregÛn.! CarlosDiciembre 22, 2015 Las quesadillas son deliciosas. Paola FigueroaEnero 11, 2015Tienen servicio a domicilio y las gorditas est·n deli! Hector Obregon OrtizEnero 7, 2015 sientate en la barra y preguntale al Chuy que otras opciones aparte del menu hay, te sorprenderas! Hector Obregon OrtizEnero 7, 2015 servicio a domicilio todavia a las 2AM  ")
        restaurantes.append(lugar1)
        
        let lugar2 = Lugares(nombre: "Mochomos", horario: "13-00", direccion: "Lago Onega 1126", foto: "RMochomos", logo: "RMochomosLogo", corazon: "favoritosSeleccionado", categoria: "Cat_Restaurante",informacion: " Steakhouse y Restaurante de comida para el alma/surena.", opiniones: "Renee Angelica G. ï Enero 11, 2012Entrada: carpaccio de at˙n. Fuerte: Filete a las almendras. Postre: pie de mango. Vino: MT de BarÛn BalchÈ Esteban FernandezMayo 3 Totalmente recomendable el Rib Eye Mochomo's LauraMarzo 12 Rib eye a la tabla y estilo mochomos, muy rico. Arnold BacaJulio 16, 2015 RiquÌsimo Pidan Rib Eye a la Tabla Pepe GuerreroFebrero 24, 2015El rib eye de puerco yanyan")
        restaurantes.append(lugar2)
        
        let lugar3 = Lugares(nombre: " Sabrosin", horario: "8:00 - 13:00", direccion: "Calle Sinaloa 737, Norte, 85010 Cd ObregÛn, SON", foto: "RSabrosinFondo", logo: "RSabrosinLogo", corazon: "favoritos", categoria: "Cat_Restaurante",informacion: "Comidas mexicanas", opiniones: "Luis K. ï Noviembre 12, 2013Mixta con veneno, recomendadisima, don poncho y la cura al cien...")
        restaurantes.append(lugar3)
        
        let lugar4 = Lugares(nombre: "Cali4nia Taco Spot", horario: "12:00 - 23:00", direccion: "Calle Norte (Casi Esq. con 5 de Febrero), Cd Obregon", foto: "RCaliforniaFondo", logo: "RCaliforniaLogo", corazon: "favoritos", categoria: "Cat_Restaurante",informacion: "Burritos ï $$$$ 01 644 418 0444", opiniones: "Jerry V. ï Junio 12, 2015De lo mejor que existe en Obregon, la Steak Salad o el Pad Tahi de mi favoritos")
        restaurantes.append(lugar4)
        
        let lugar5 = Lugares(nombre:"Meson La Viña ", horario: "13:00 - 02:00", direccion: ": Licenciado Miguel Alem·n Velasco 541, Zona Nte, 85040 Cd ObregÛn, Son.", foto: "RMesonFondo", logo: "", corazon: "favoritos", categoria: "Cat_Restaurante",informacion: "", opiniones: "Joze F. ï Mayo 15Espeluznante mente bueno muy sorprendente tener en ObregÛn un restauran como este. Excelente servicio una comida espaÒola muy bueno recomendable 100% cola al vino tinto y el chamorro")
        restaurantes.append(lugar5)
        
        let lugar6 = Lugares(nombre: "City Salads", horario: "8:00 - 12:00", direccion: "Plaza del Sol, Jalisco 920, Real del Sol, 85019 Cd ObregÛn, Son.", foto: "RCitySaladsFondo", logo: "RCitySaladsLogo", corazon: "favoritos", categoria: "Cat_Restaurante",informacion: " - ", opiniones: "Jairo Ervey G. ï Enero 29, 2013Pide el Baguette Madrid con aderezo de cilantro !!!... No te lo vuelvo a repetir")
        restaurantes.append(lugar6)
        
        let lugar7 = Lugares(nombre: "Mr. Steak", horario: "12:00 - 22:30", direccion: "Cortes de carne y guarniciones internacionales en un espacio con candiles, vitrales y mesas de mantel rojo.", foto: "RMrSteakFondo", logo: "RMRSteakLogo", corazon: "favoritos", categoria: "Cat_Restaurante",informacion: "", opiniones: "GM/Chef/Coach Thorvaldd de AlbaSeptiembre 26, 2014 Cortes excelentes, pedÌ cabrerÌa termino medio. Gran atenciÛn de los meseros, sÛlo les aconsejo relajarse un poco, a los clientes nos gusta el trato ameno y fluÌdo Daniel OlmosSeptiembre 7, 2015 PedÌ un paquete. La carne deliciosa aunque no venÌa cocinada al tÈrmino que la pedÌ. Los frijoles con queso son adictivos Roberto Gonz·lezAgosto 6, 2013  Los mejores Filetes de res ")
        restaurantes.append(lugar7)
        
        let lugar8 = Lugares(nombre: "Taco Fish", horario: "8:00 - 17:00", direccion: "Cananea (at Lago Superior)85040 Cd Obregon, Sonora", foto: "RTacoFish", logo: "RTacoFishLogo", corazon: "favoritosSeleccionado", categoria: "Cat_Restaurante",informacion: "Tacos de pescado y comida marina.", opiniones: "FULLENIOS TACO FISH ï Septiembre 18, 2014Lo m·s pedido, debes probarlo Fullenio, G¸erito Chesse, Quesadilla de CamarÛn, Quesadilla de Marlin y el de Pescado!!Heshu VasquezJunio 14, 2015 Taco fullenios y guerito cheese, adem·s de los tÌpicos de camarÛn y pescado capeado. Fullenios Taco FishAgosto 26, 2014 Apoco no quedaste lleno con un Fullenio? Solo en Taco Fish Zona Norte Ivan Martinezhace 2 semanasQ uesadillas de marlin, recomendado")
        restaurantes.append(lugar8)
        
        let lugar9 = Lugares(nombre:"La Catrina ", horario: "11:00 - 20:00", direccion: "Miguel AlemanCd Obregon, Sonora", foto: "RCatrinaFondo", logo: "RCatrinaLogo", corazon: "favoritos", categoria: "Cat_Restaurante",informacion: "Comida mexicana y espaÒola.", opiniones: " Jes˙s GaxiolaDiciembre 28, 2012 Las empanadas de huitlacoche.son muy ricas Veilhcilli XemaasSeptiembre 22, 2013 Buen lugar, decoracion y platillos Mexicanos. Ambiente familiar y si lo que quieres es escapar con tu pareja o amigos tambien es buena opcion. ")
        restaurantes.append(lugar9)
        
        let lugar10 = Lugares(nombre: "Taco Taco", horario: "12:00 - 00:00", direccion: "Avenida Miguel Alem·n 576, Zona Nte, 85000 Cd ObregÛn, Son.", foto: "RTacoTacoFondo", logo: "RTacoTacoLogo", corazon: "favoritosSeleccionado", categoria: "Cat_Restaurante",informacion: "Tacos", opiniones: "rafael posadasFebrero 19, 2015 El rib eye buenÌsimo, no le pide nada a ning˙n Restaurant de cortes. Esteban Fern·ndezMarzo 29, 2015 Los frijoles charros: buenÌsimos Oscar BarrazaJunio 15, 2013 Los mejores tacos que eh comido :) CarlosOctubre 19, 2010 Muy mala la carne! Exul FurJunio 9, 2012 Yummi, yummi!!! ")
        restaurantes.append(lugar10)
        
        let lugar11 = Lugares(nombre: "La Justa Pizza", horario: "12:00 - 00:00", direccion: "Calle Caoba #931, Chapultepec, 85100 Cd ObregÛn, Son.", foto: "RJustaPizza", logo: "RLaJustaLogo", corazon: "favoritosSeleccionado", categoria: "Cat_Restaurante",informacion: "Esta sencilla pizzerÌa con ambiente juvenil sirve pastas, rollos de sushi y alitas, acompaÒados con cerveza.", opiniones: "Paola FigueroaJunio 14, 2014Y ps no es el mismo sabor de hace aÒos :( Mariana EncinasOctubre 29, 2014 Pizza boneless ? Francisco GarciaMayo 28 La pizza del patron es un crack mismo sabor q en los 90s. Son famosas desde antes de facebook Ana R. ï Febrero 1, 2015Deliciosa la pizza de boneless ?? y los tarros a $10")
        restaurantes.append(lugar11)
        
        
        
        
        restaurantesFiltrados = restaurantes
        
    }
  
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantesFiltrados.count // contar de manera dinamica el numero de elementos que hay en alumnos ... que seran representados como renglones
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaRestaurantes") as! CeldaRestaurantesController
        // as con signo de interrogacion es que le aseguras que celdaAlumno puede transformarse en tipo celdaAlumnoController, estamos haciendo un casting
        
        celda.lblNombreLugar.text = restaurantesFiltrados[(indexPath as NSIndexPath).row].nombre
        celda.lblHorario.text = restaurantesFiltrados[(indexPath as NSIndexPath).row].horario
        celda.lblDireccion.text = restaurantesFiltrados[(indexPath as NSIndexPath).row].direccion
        celda.imgFondoCelda.image = restaurantesFiltrados[(indexPath as NSIndexPath).row].imgFoto
        celda.lblLogoLugar.image = restaurantesFiltrados[(indexPath as NSIndexPath).row].imgLogo
        celda.imgCorazon.image = restaurantesFiltrados[(indexPath as NSIndexPath).row].imgCorazon
        celda.imgCategoria.image = restaurantesFiltrados[(indexPath as NSIndexPath).row].imgCategoria
        
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
            
                        detalleLugarController.lugares = restaurantes[(tvRestaurantes.indexPathForSelectedRow! as NSIndexPath).row]
            
            // alumno en la posicion seleccionada de la tabla va a ser ahora igual a materiaController
        }
        
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        // Obtener los alumnos que contengan un texto que se le parezca a searchText
        
        restaurantesFiltrados = [] // inicializado
        
        for lugares in restaurantes {// recorre el arreglo alumnos y cada iteracion alumno tiene el valor del alumno en respectiva iteracion
            
            if lugares.nombre.lowercased().range(of: searchText.lowercased()) != nil {
                restaurantesFiltrados.append(lugares)
            }
        }
        
        tvRestaurantes.reloadData()
        
    }
    
    
}
