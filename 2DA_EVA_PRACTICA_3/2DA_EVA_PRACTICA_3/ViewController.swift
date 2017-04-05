//
//  ViewController.swift
//  2DA_EVA_PRACTICA_3
//
//  Created by  on 28/03/17.
//
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var lblarMateria: UILabel!
    
    //Creamos el primer array para introducir los datos que apareceran dentro de las celdas
    let misDatos = ["Fundamentos de Programación","Programación Orientada a Objetos","Estructura de Datos","Tópicos Avanzados de Programación","Fundamentos de Bases de Datos", "Fundamentos de Telecomunicaciones","Taller de Bases de Datos","Redes de Computadoras","Administración de Bases de Datos","Conmutación y Enrutamiento en Redes de Datos","Fundamentos de las Comunicaciones Móviles","Sistemas Operativos para Dispositivos Móviles","Administración de Redes","Programación Web","Programación de Dispositivos Móviles Plataforma I","Aplicaciones Web para Dispositivos Móviles","Programación de Dispositivos Móviles Plataforma II"]
    //Creamos el segundo array para introducir las imagenes asociadas a los datos que se colocaran en cada celda
    let imgFondo = ["FP", "POO", "ED", "TAP", "FBD", "FT", "TBD", "RC", "ABD", "CERD", "FCM", "SODM", "AR", "PW", "PDMP1", "AWDM", "PDMP2"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //Se crearan las celdas correspondientes al numero de datos
        return misDatos.count
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        var semestre = ""
        let curso = misDatos[indexPath.row]
        
        if curso == "Fundamentos de Programación" {
            semestre = "1er Semestre"
        }
        if curso == "Programación Orientada a Objetos" {
            semestre = "2do Semestre"
        }
        if curso == "Estructura de Datos" {
            semestre = "3er Semestre"
        }
        if curso == "Tópicos Avanzados de Programación" || curso == "Fundamentos de Bases de Datos" {
            semestre = "4to Semestre"
        }
        if curso == "Fundamentos de Telecomunicaciones" || curso == "Taller de Bases de Datos" {
            semestre = "5to Semestre"
        }
        if curso == "Redes de Computadoras" || curso == "Administración de Bases de Datos" {
            semestre = "6to Semestre"
        }
        if curso == "Conmutación y Enrutamiento en Redes de Datos" || curso == "Fundamentos de las Comunicaciones Móviles" || curso == "Sistemas Operativos para Dispositivos Móviles" {
            semestre = "7mo Semestre"
        }
        if curso == "Administración de Redes" || curso == "Programación Web" || curso == "Programación de Dispositivos Móviles Plataforma I" {
            semestre = "8vo Semestre"
        }
        if curso == "Aplicaciones Web para Dispositivos Móviles" || curso == "Programación de Dispositivos Móviles Plataforma II" {
            semestre = "9no Semestre"
        }
        
        if curso == "Fundamentos de Programación" || curso == "Programación Orientada a Objetos" || curso == "Estructura de Datos" || curso == "Tópicos Avanzados de Programación" || curso == "Sistemas Operativos para Dispositivos Móviles" || curso == "Sistemas Operativos para Dispositivos Móviles" || curso == "Programación Web" || curso == "Programación de Dispositivos Móviles Plataforma I" || curso == "Aplicaciones Web para Dispositivos Móviles" || curso == "Programación de Dispositivos Móviles Plataforma II" {
            lblarMateria.text = "Programación"
        }
        if curso == "Fundamentos de Bases de Datos" || curso == "Taller de Bases de Datos" || curso == "Administración de Bases de Datos" {
            lblarMateria.text = "Base de Datos"
        }
        if curso == "Fundamentos de Telecomunicaciones" || curso == "Redes de Computadoras" || curso == "Conmutación y Enrutamiento en Redes de Datos" || curso == "Fundamentos de las Comunicaciones Móviles" || curso == "Administración de Redes" {
            lblarMateria.text = "Redes"
        }
        
        let controlador = UIAlertController(title: curso, message: "Curso de "+semestre, preferredStyle: .Alert)
        let boton = UIAlertAction (title: "Ok", style: .Default, handler: nil)
        controlador.addAction(boton)
        presentViewController(controlador, animated: true, completion: nil)
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let celda = tableView.dequeueReusableCellWithIdentifier("micelda") as! TableViewCellMia
        
        celda.lblMateria.text = misDatos[indexPath.row]
        let img = UIImage(named: imgFondo[indexPath.row])
        celda.imgImagen.image = img
        let imClick = UIImage(named: "tecnologia")
        celda.imgImagen.highlightedImage = imClick
        return celda
    }


}

