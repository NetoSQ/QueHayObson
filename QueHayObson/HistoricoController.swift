//
//  HistoricoController.swift
//  QueHayObson
//
//  Created by Ernesto Salazar on 17/10/16.
//  Copyright © 2016 DreamTeamCo. All rights reserved.
//

import Foundation
import UIKit

class HistoricoController : UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet var tvHistorico: UITableView!
    
    
    
    var historico : [Lugares] = [] // quiero una variable alumno del tipo arreglo de alumno e inicializalo y esta contenida en este viewcontroller.
    // alumnos a su vez tiene un arreglo de materias
    
    var historicoFiltrados : [Lugares] = []
    
    override func viewDidLoad() { // aqui pones cosas que quieres que salgan incializadas
        
        // aqui hay un constructor
        // btw otra manera de hacerlo es : alumnos.append(Alumno(nombre: "José", apellidos: "Perez", matricula: "2312"... etc)
        
        /* codigo AAA */
        
        let lugar1 = Lugares(nombre: "Casa de la Cultura Cajeme", horario: "Lunes a viernes de 8:00 AM – 15:00 PM ", direccion: "Ampliacion Vicente Guerrero 2610, Morelos, 85110", foto: "HCasaCFondo", logo: "HCasaCulturaLogo", corazon: "favorito", categoria: "Cat_Historico", informacion: " Lugar de artes interpretativas y Arte público")
        historico.append(lugar1)
        
        let lugar2 = Lugares(nombre: "Museo de los Yaquis ", horario: "Miércoles a domingo de 9:00 AM – 18:00 PM", direccion: " Calle Sinaloa 200, Cocorit, 85219 ", foto: "HMuseoYaquiFondo", logo: "HMuseoYaquiLogo", corazon: "favoritoSeleccionado", categoria: "Cat_Historico", informacion: "Para descubrir a una cultura centenaria, patrimonio de la humanidad.")
        historico.append(lugar2)
        
        let lugar3 = Lugares(nombre: "Monumento Cascada", horario: "Indefinido", direccion: " Blvd. Rodolfo Elías Calles, Centro, Cajeme, 85000 ", foto: "HCascadaFondo", logo: "HCascadaLogo", corazon: "favorito", categoria: "Cat_Historico", informacion: " Located on a roundabout at Avenida Miguel Aleman and 200 Street, you will find a beautiful monument that portrays a four-sided cascading waterfall known as La Cascada, built by the governor of the state Mr Rodolfo Félix Valdez in September 1990. Tourists are mesmerised by the sunlight shimmering from the continuous flow of water, which represents a cascading waterfall. When you take a closer look, you will see a fruitful burst of meticulously placed trees where many birds perch in the shade and grasp to quench their thirst. At night its beauty radiates even more as the combination of the waterfalls with light reflectors create an inviting atmosphere and focal point for an astonishing souvenir photograph. " ,opiniones: " No hay opiniones disponibles. ")
        historico.append(lugar3)
        
        let lugar4 = Lugares(nombre: "Plaza Álvaro Obregón", horario: "Indefinido", direccion: " Calle 5 de Febrero, Centro", foto: "HAlvaroFondo", logo: "HAlvaroLogo", corazon: "favorito", categoria: "Cat_Historico", informacion: " Este monumento se localiza en la plaza central de Ciudad Obregón entre 5 de Febrero e Hidalgo. General Álvaro era un soldado invencible que peleo en la revolución Mexicana. En 1920, el fue electo presidente de México y durante su tiempo como presidente, el se esforzó por incrementar la agricultura, el trabajo y la educación. En 1924 cuando su ciclo termino, el regreso a Ciudad Obregón (Cajeme) donde continúo su vida como agricultor y se volvió el máximo productor de chícharo y arroz. Su vida acabó de repente cuando fue invitado a una banquete en el restaurante La Bombilla por un hombre llamado Manco Celaya, bajo el pretexto de ver unos dibujos, cuando de repente el hombre lo mató disparándole 3 veces en la cara.", opiniones: " No hay opiniones disponibles. ")
        historico.append(lugar4)
        
        let lugar5 = Lugares(nombre: "Reloj Monumental", horario: "Indefinido", direccion: " Calle 5 de Febrero, Centro, Cajeme, 85000", foto: "HRelojFondo", logo: "HRelojLogo", corazon: "favorito", categoria: "Cat_Historico", informacion: " El reloj monumental también se encuentra en la plaza central de Ciudad Obregón entre 5 de Febrero e Hidalgo. El reloj fue construido en 1991 y se puso de manifiesto durante el tiempo en que C. Rodolfo Félix Valdez era el entonces Gobernador de Sonora y C. Jesús Félix Holguín era el presidente de Ciudad Obregón (Cajeme) (entre 1988 - 1991) como una distinción de la seguridad en la ciudad. Con vista a la Plaza Álvaro Obregón, la torre del reloj es un símbolo del tiempo con una altura máxima de 8-10 metros, rodeada de un jardín de flores y césped cuidadosamente mantenido; que encaja en un entorno atractivo y muy audaz cuando la luz del sol se refleja en sus ángulos agudos.", opiniones: " No hay opiniones disponibles.")
        historico.append(lugar5)
        
        let lugar6 = Lugares(nombre: "Catedral de Ciudad Obregón", horario: "Indefinido", direccion: " Sonora Norte 166, Colonia Centro, 85000 ", foto: "HCatedralFondo", logo: "HCatedralLogo@3x", corazon: "favorito", categoria: "Cat_Historico", informacion: "La Catedral de Ciudad Obregón, sede de Diócesis de Ciudad Obregón, es una de las catedrales más recientes del país, ya que fue levantada a finales del siglo XX.")
        historico.append(lugar6)
        
        let lugar7 = Lugares(nombre: "Plaza Zaragoza", horario: "Indefinido", direccion: " California (Ignacio Zaragoza)", foto: "HZaragozaFondo", logo: "HZaragozaLogo", corazon: "favorito", categoria: "Cat_Historico", informacion: " En honor al presidente Ignacio Zaragoza.")
        historico.append(lugar7)
        
        let lugar8 = Lugares(nombre: "Monumento Juan Maldonado Tetabiate", horario: "Indefinido", direccion: " 200, Centro, 85000", foto: "HTetabiateFondo", logo: "HTetabiateLogo", corazon: "favorito", categoria: "Cat_Historico", informacion: " Guerrero defensor de la tribu Yaqui y las causas justas (1857-1901).Tetabiate (piedra volteada), fue el sucesor de Cajeme, mantuvo la lucha por estas tierras durante diez años y, en un intento de conciliación, firmó la paz de Ortiz en 1897.", opiniones: " No hay opiniones disponibles. ")
        historico.append(lugar8)
        
        let lugar9 = Lugares(nombre: "Parque y Estatua de los Pioneros", horario: "Indefinido", direccion: " Zona norte, calle Morelos entre Durango y Zacatecas ", foto: "HPionerosFondo", logo: "HPionerosLogo", corazon: "favorito", categoria: "Cat_Historico", informacion: " Diariamente infinidad de personas que practican el sano ejercicio de la caminata, acuden especialmente por las mañanas a temprana hora, o bien al caer la tarde, incluso por las noches, confiados en el ambiente de seguridad que prevalece, y no porque esté lleno de policías o personal de vigilancia, sino porque los propios vecinos del sector y los visitantes aledaños, se han encargado de mantener ese clima de estabilidad social, donde los niños juegan y corren despreocupadamente, los ancianos descansan y charlan generosamente, mientras algunas madres jóvenes pasean a sus bebés tirando de las carriolas.", opiniones: " No hay opiniones disponibles. ")
        historico.append(lugar9)
        
        let lugar10 = Lugares(nombre: "La Casona de Cocorit", horario: "Indefinido", direccion: " Zona norte, calle Morelos entre Durango y Zacatecas ", foto: "HCasonaFondo", logo: "HCasonaLogo", corazon: "favorito", categoria: "Cat_Historico", informacion: " Esta construcción data del siglo pasado su arquitectura es de estilo neoclásica. Entre los visitantes distinguidos se cuenta con la del pintor y escultor de talla internacional José Luis Cuevas.", opiniones: " No hay opiniones disponibles. ")
        historico.append(lugar10)
        
        historicoFiltrados = historico
        
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return historicoFiltrados.count // contar de manera dinamica el numero de elementos que hay en alumnos ... que seran representados como renglones
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celda = tableView.dequeueReusableCell(withIdentifier: "CeldaHistorico") as! CeldaHistoricoController
        
        // as con signo de interrogacion es que le aseguras que celdaAlumno puede transformarse en tipo celdaAlumnoController, estamos haciendo un casting
        
        celda.lblNombreLugar.text = historicoFiltrados[(indexPath as NSIndexPath).row].nombre
        celda.lblHorario.text = historicoFiltrados[(indexPath as NSIndexPath).row].horario
        celda.lblDireccion.text = historicoFiltrados[(indexPath as NSIndexPath).row].direccion
        celda.imgFondoCelda.image = historicoFiltrados[(indexPath as NSIndexPath).row].imgFoto
        celda.lblLogoLugar.image = historicoFiltrados[(indexPath as NSIndexPath).row].imgLogo
        celda.imgCorazon.image = historicoFiltrados[(indexPath as NSIndexPath).row].imgCorazon
        celda.imgCategoria.image = historicoFiltrados[(indexPath as NSIndexPath).row].imgCategoria
        
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
            
            detalleLugarController.lugares = historico[(tvHistorico.indexPathForSelectedRow! as NSIndexPath).row]
            
            // alumno en la posicion seleccionada de la tabla va a ser ahora igual a materiaController
        }
        
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        // Obtener los alumnos que contengan un texto que se le parezca a searchText
        
        historicoFiltrados = [] // inicializado
        
        for lugares in historico {// recorre el arreglo alumnos y cada iteracion alumno tiene el valor del alumno en respectiva iteracion
            
            if lugares.nombre.lowercased().range(of: searchText.lowercased()) != nil {
                historicoFiltrados.append(lugares)
            }
        }
        
        tvHistorico.reloadData()
        
    }
    
    
}

