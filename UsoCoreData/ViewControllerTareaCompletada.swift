//
//  ViewControllerTareaCompletada.swift
//  UsoCoreData
//
//  Created by Mac05 on 14/10/24.
//

import UIKit

class ViewControllerTareaCompletada: UIViewController {
    
    @IBOutlet weak var tareaLabel: UILabel!
    
    var tarea = Tarea()
    var anteriorVC = ViewController()

    override func viewDidLoad() {
        super.viewDidLoad()

        if tarea.importante {
            tareaLabel.text = "😇 \(tarea.nombre)"
        } else {
            tareaLabel.text = tarea.nombre
        }
    }
    
    @IBAction func completarTarea(_ sender: Any) {
        anteriorVC.tareas.remove(at: anteriorVC.indexSeleccionado)
        anteriorVC.tableView.reloadData()
        navigationController?.popViewController(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
