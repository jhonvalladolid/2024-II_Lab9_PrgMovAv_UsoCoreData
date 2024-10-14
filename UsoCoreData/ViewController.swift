//
//  ViewController.swift
//  UsoCoreData
//
//  Created by Mac05 on 14/10/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var tareas:[Tarea] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
        tareas = crearTareas()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tareas.count
    }
        
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let tarea = tareas[indexPath.row]
        
        if tarea.importante {
            cell.textLabel?.text = "😊 \(tarea.nombre)"
        } else {
            cell.textLabel?.text = "😕 \(tarea.nombre)"
        }
        
        return cell
    }

    func crearTareas() -> [Tarea] {
        let tarea1 = Tarea()
        tarea1.nombre = "Estudiar para el examen"
        tarea1.importante = false
        
        let tarea2 = Tarea()
        tarea2.nombre = "Hacer los laboratorios"
        tarea2.importante = true
        
        let tarea3 = Tarea()
        tarea3.nombre = "Estudiar para subsa"
        tarea3.importante = false
        
        return [tarea1, tarea2, tarea3]
    }
    
    @IBAction func agregarTarea(_ sender: Any) {
        performSegue(withIdentifier: "agregarSegue", sender: nil)
    }
    
}

