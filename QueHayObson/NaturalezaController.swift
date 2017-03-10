//
//  NaturalezaController.swift
//  QueHayObson
//
//  Created by Ernesto Salazar on 17/10/16.
//  Copyright © 2016 DreamTeamCo. All rights reserved.
//

import Foundation
import UIKit

class NaturalezaController : UIViewController, UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate{
    
    @IBOutlet var tvNaturaleza: UITableView!
    
    
    
    var naturaleza : [Lugares] = [] // quiero una variable alumno del tipo arreglo de alumno e inicializalo y esta contenida en este viewcontroller.
    // alumnos a su vez tiene un arreglo de materias
    
    var naturalezaFiltrados : [Lugares] = []
    
    override func viewDidLoad() { // aqui pones cosas que quieres que salgan incializadas
        
        // aqui hay un constructor
        // btw otra manera de hacerlo es : alumnos.append(Alumno(nombre: "José", apellidos: "Perez", matricula: "2312"... etc)
        
        /* codigo AAA */
        
        let lugar1 = Lugares(nombre: "Eco Camp Inn", horario: "Indefinido", direccion: " Carretera Internacional Hornos Tesopaco Km 26", foto: "NFondoEco", logo: "NEcoCampLogo", corazon: "favoritosSeleccionado", categoria: "Cat_Naturaleza", informacion: " Eco Camp Inn te invita a descubrir, disfrutar y conocer  la mejor manera de integrarte en un espacio libre y seguro para toda la familia donde encontraras aventura al extremo, al natural y sobre todo maravillosos momentos que siempre recordaras. Descubre todas las opciones que tenemos para ti  y disfruta de un espacio libre, seguro y sobre todo. Conoce y vive la experiencia campirana.")
        naturaleza.append(lugar1)
        
        let lugar2 = Lugares(nombre: "Laguna del Nainari", horario: "Indefinido", direccion: " Av. Guerrero y Padre Eusebio Kino, ubicada al poniente de la ciudad ", foto: "NFondoLaguna", logo: "NLagunaLogo", corazon: "favoritos", categoria: "Cat_Naturaleza", informacion: " Este lago artificial construido en 1956 es el escenario perfecto para pasar un día relajado o ejercitándose en contacto directo con la naturaleza. Ha sido sede de varios eventos deportivos y es ideal para darle una vuelta corriendo. Aunque si prefieres evitar el esfuerzo, podrás comprar un coco y acomodarte bajo la sombra de un árbol. No olvides llevar tu bolsa de pan para alimentar a los patos, pájaros e incluso tortugas.")
        naturaleza.append(lugar2)
        
        let lugar3 = Lugares(nombre: "Presa El Oviachic", horario: "Indefinido", direccion: " Ubicada a 40 km al norte de la ciudad.", foto: "NFondoPresa", logo: "NPresaLogo", corazon: "favoritos", categoria: "Cat_Naturaleza", informacion: " Construida entre 1947 y 1952, es la represa más grande de la cuenca del río Yaqui y se encuentra al pie de la Sierra Madre Occidental. Conocida también como Presa Álvaro Obregón, se ha convertido en un lugar recreativo en donde puedes realizar actividades como pesca, paseo en lancha, esquí acuático, entre otros. El paisaje de los alrededores es espectacular, haciéndolo también un lugar idóneo para explorar y acampar.")
        naturaleza.append(lugar3)
        
        let lugar4 = Lugares(nombre: "Paseo La Isleta", horario: "Indefinido", direccion: "A 40 minutos de Cd. Obregón, frente al dique 10", foto: "NFondoIsleta", logo: "NIsletaLogo", corazon: "favoritosSeleccionado", categoria: "Cat_Naturaleza", informacion: "Paseo de ambiente familiar ")
        naturaleza.append(lugar4)
        
        let lugar5 = Lugares(nombre: "Balneario El coyote", horario: " De 9:00 AM a 6:30 PM", direccion: " Carretera Esperanza-Hornos KM 14", foto: "NFondoCoyote", logo: "NCoyoteLogo", corazon: "favoritos", categoria: "Cat_Naturaleza", informacion: " Balneario El Coyote fue fundado en 1999 con la idea de ofrecer una opción más moderna y limpia a los típicos paseos que existían en la región. Durante el transcurso del tiempo hemos crecido a base de trabajo, convirtiendo nuestro paseo, que constaba de un área verde en un inicio, en la mejor opción de diversión y entretenimiento acuático en el sur de Sonora.")
        naturaleza.append(lugar5)
        
        let lugar6 = Lugares(nombre: "El paredón", horario: " Lunes a domingo de 9 am a 7 pm ", direccion: " Domicilio conocido paredón colorado, enfrente de isla bubulai ", foto: "NFondoParedon", logo: "NParedonLogo", corazon: "favoritos", categoria: "Cat_Naturaleza", informacion: " Restaurante de Mariscos con vista agradable.", opiniones: " Rafael Gómez Silva: Un lugar para saborear los más sabrosos camarones, callo de hacha, jaibas, lisas fritas y muchos mariscos mas. Gloria Cano : La Hospitalidad De Su Gente, La Comida y El Lugar Me Parecen Maravillosos,Saludos Gente Bella¡¡ Mario Alberto Leyva Garcia: Lo mejor bello pueblo Elodia Madrid: Hermoso Lugar! ")
        naturaleza.append(lugar6)
        
        let lugar7 = Lugares(nombre: "Dique 10", horario: "Indefinido", direccion: " A pocos kilómetros de la Ciudad con Rumbo a la Presa del Oviachic Alvaro Obregón", foto: "NFondoDique", logo: "NDiqueLogo", corazon: "favoritos", categoria: "Cat_Naturaleza", informacion: "Ante en sus inmendaciones como en sus extensiones en el dique 10, arroyos y ríos  podemos disfrutan de un sinnúmero de lugares de esparcimiento", opiniones: " Jesus Escalante: Grandioso lugar Mario Ortiz: Hermosas aguas. Silvia Valenzuela:  Le faltan lugares para descansar. Antonio Aguilar:  Mi paseo favorito.")
        naturaleza.append(lugar7)
        
        naturalezaFiltrados = naturaleza
        
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return naturalezaFiltrados.count // contar de manera dinamica el numero de elementos que hay en alumnos ... que seran representados como renglones
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celda = tableView.dequeueReusableCell(withIdentifier: "CeldaNaturaleza") as! CeldaNaturalezaController
        
        // as con signo de interrogacion es que le aseguras que celdaAlumno puede transformarse en tipo celdaAlumnoController, estamos haciendo un casting
        
        celda.lblNombreLugar.text = naturalezaFiltrados[(indexPath as NSIndexPath).row].nombre
        celda.lblHorario.text = naturalezaFiltrados[(indexPath as NSIndexPath).row].horario
        celda.lblDireccion.text = naturalezaFiltrados[(indexPath as NSIndexPath).row].direccion
        celda.imgFondoCelda.image = naturalezaFiltrados[(indexPath as NSIndexPath).row].imgFoto
        celda.lblLogoLugar.image = naturalezaFiltrados[(indexPath as NSIndexPath).row].imgLogo
        celda.imgCorazon.image = naturalezaFiltrados[(indexPath as NSIndexPath).row].imgCorazon
        celda.imgCategoria.image = naturalezaFiltrados[(indexPath as NSIndexPath).row].imgCategoria
        
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
            
            detalleLugarController.lugares = naturaleza[(tvNaturaleza.indexPathForSelectedRow! as NSIndexPath).row]
            
            // alumno en la posicion seleccionada de la tabla va a ser ahora igual a materiaController
        }
        
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        // Obtener los alumnos que contengan un texto que se le parezca a searchText
        
        naturalezaFiltrados = [] // inicializado
        
        for lugares in naturaleza {// recorre el arreglo alumnos y cada iteracion alumno tiene el valor del alumno en respectiva iteracion
            
            if lugares.nombre.lowercased().range(of: searchText.lowercased()) != nil {
                naturalezaFiltrados.append(lugares)
            }
        }
        
        tvNaturaleza.reloadData()
        
    }
    
    
}

