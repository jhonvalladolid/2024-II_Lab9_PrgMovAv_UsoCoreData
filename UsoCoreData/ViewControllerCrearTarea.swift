//
//  ViewControllerCrearTarea.swift
//  UsoCoreData
//
//  Created by Mac05 on 14/10/24.
//

import UIKit

class ViewControllerCrearTarea: UIViewController {

    @IBOutlet weak var txtNombreTarea: UITextField!
    @IBOutlet weak var swImportante: UISwitch!
    
    var anteriorVC = ViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func agregar(_ sender: Any) {
        //let tarea = Tarea()
        // Se apertura uso de persistencia
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        let tarea = Tarea(context: context)
        tarea.nombre = txtNombreTarea.text!
        tarea.importante = swImportante.isOn
        
        //Se guarda el dato agregado a la entidad Tarea
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        //anteriorVC.tareas.append(tarea)
        //anteriorVC.tableView.reloadData()
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
