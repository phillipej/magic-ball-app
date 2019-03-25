//
//  ViewController.swift
//  magic ball
//
//  Created by Phillipe Osorio on 06/02/19.
//  Copyright © 2019 Phillipe Osorio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let respostas = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var numeroAleatorio: Int = 0
    
    

    @IBOutlet weak var revelacao: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        changeAnswer()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        changeAnswer()
    }
    
    @IBAction func butao(_ sender: UIButton) {
        changeAnswer()
    }
    
    
    func changeAnswer (){
        
        numeroAleatorio = Int.random(in: (0 ... 4))
        
        revelacao.image = UIImage (named: respostas[numeroAleatorio])
        
    }

}

