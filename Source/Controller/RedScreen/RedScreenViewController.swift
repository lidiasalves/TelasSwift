//
//  RedScreenViewController.swift
//  TelasSwift
//
//  Created by IFBIOTIC20 on 23/08/24.
//

import Foundation
import UIKit

class RedScreenViewController: UIViewController {
    //cria uma variável
    lazy var viewMain: RedScreenView = {
        let redScreen = RedScreenView()
        
        return redScreen
    }()
    
    override func loadView(){
        self.view = viewMain
    }
    
    // é executado quando está carregando
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.prefersLargeTitles=true
        
        // Criar o botão 1
        let button = UIButton(type: .system)
        button.setTitle("Voltar para tela verde", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.frame = CGRect(x: 100, y: 300, width: 200, height: 50)
        button.addTarget(self, action: #selector(backToGreen), for: .touchUpInside)
        self.view.addSubview(button)
        
        // Criar o botão 2
        let button2 = UIButton(type: .system)
        button2.setTitle("Ir para tela azul", for: .normal)
        button2.setTitleColor(.black, for: .normal)
        button2.frame = CGRect(x: 100, y: 350, width: 200, height: 50)
        button2.addTarget(self, action: #selector(goToBlue), for: .touchUpInside)
        self.view.addSubview(button2)
    }

    @objc func backToGreen() {
        let greenScreenViewController = GreenScreenViewController(nibName: nil, bundle: nil)
        navigationController?.pushViewController(greenScreenViewController, animated: true)
    }
    @objc func goToBlue() {
        let blueScreenViewController = BlueScreenViewController(nibName: nil, bundle: nil)
        navigationController?.pushViewController(blueScreenViewController, animated: true)
    }
}
