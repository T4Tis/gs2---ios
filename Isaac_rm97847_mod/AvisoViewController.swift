//
//  AvisoViewController.swift
//  Isaac_rm97847_mod
//
//  Created by Usuário Convidado on 16/11/26.
//

import UIKit
import CoreData

class AvisoViewController: UIViewController {

    @IBOutlet weak var txtTitulo: UITextField!
    @IBOutlet weak var txtInfo: UITextField!
    @IBOutlet weak var txtTipo: UITextField!
    @IBOutlet weak var txtData: UITextField!
    @IBOutlet weak var txtHora: UITextField!
    @IBOutlet weak var txtConselho: UITextField!
    @IBOutlet weak var txtFonte: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func salvar(_ sender: Any) {
        self.save(titulo: txtTitulo.text!, info: txtInfo.text!, tipo: txtTipo.text!, data: txtData.text!, hora: txtHora.text!, conselho: txtConselho.text!, fonte: txtFonte.text!)
        
        self.navigationController?.popViewController(animated: true)
    }
    
    func save(titulo:String, info:String, tipo:String, data:String, hora:String, conselho:String, fonte:String){
        
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return }
        let manegedContext = appDelegate.persistentContainer.viewContext
        let entidade = NSEntityDescription.entity(forEntityName: "Aviso", in: manegedContext)!
        let aviso = NSManagedObject(entity: entidade, insertInto: manegedContext)
        
        aviso.setValue(titulo, forKeyPath: "titulo")
        aviso.setValue(info, forKeyPath: "info")
        aviso.setValue(tipo, forKeyPath: "tipo")
        aviso.setValue(data, forKeyPath: "data")
        aviso.setValue(hora, forKeyPath: "hora")
        aviso.setValue(conselho, forKeyPath: "conselho")
        aviso.setValue(fonte, forKeyPath: "fonte")
        
        do{
            try manegedContext.save()
        } catch let error as NSError {
            print("Erro no Salvamento. \(error), \(error.userInfo)")
        }
        
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
