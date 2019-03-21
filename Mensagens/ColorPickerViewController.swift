//
//  ColorPickerViewController.swift
//  Mensagens
//
//  Created by Gilmar on 20/03/2019.
//  Copyright © 2019 Eric Brito. All rights reserved.
//

import UIKit

protocol colorPickerProtocol: class {
    func applyColor(color:UIColor)
}

class ColorPickerViewController: UIViewController {

    @IBOutlet weak var viColor: UIView!
    @IBOutlet weak var slRed: UISlider!
    
    @IBOutlet weak var slblue: UISlider!
    @IBOutlet weak var slGreen: UISlider!
    
    weak var reference : colorPickerProtocol?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func chooseColor(_ sender: UIButton) {
        dismiss(animated: true, completion:nil)
    }
    
    @IBAction func chengColor(_ sender: Any) {
        viColor.backgroundColor = UIColor(red: CGFloat(slRed.value), green: CGFloat(slGreen.value), blue: CGFloat(slblue.value), alpha: 1.0)
         reference?.applyColor(color: viColor.backgroundColor!)
    }
    
}
