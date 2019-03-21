//
//  BaseViewController.swift
//  Mensagens
//
//  Created by Gilmar on 20/03/2019.
//  Copyright © 2019 Eric Brito. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    
    var message: Message!
    
    @IBOutlet weak var lbMessage : UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
  
    @IBAction func changeColor(_ sender:UIButton){
        if let reference = self as? colorPickerProtocol{
        let colorPicker = storyboard?.instantiateViewController(withIdentifier: "ColorPickerViewController") as! ColorPickerViewController
        colorPicker.modalPresentationStyle = .overCurrentContext
        colorPicker.reference = reference
        present(colorPicker,animated: true,completion: nil)
    }
 }
    
}

