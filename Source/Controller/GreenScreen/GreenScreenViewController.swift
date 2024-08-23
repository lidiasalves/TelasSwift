//
//  GreenScreenViewController.swift
//  TelasSwift
//
//  Created by IFBIOTIC20 on 23/08/24.
//

import Foundation
import UIKit

class GreenScreenViewController: UIViewController {
    //cria uma variável
    lazy var viewMain: GreenScreenView = {
        let greenScreen = GreenScreenView()
        
        return greenScreen
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
        button.setTitle("Ir para tela vermelha", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.frame = CGRect(x: 100, y: 300, width: 200, height: 50)
        button.addTarget(self, action: #selector(goToRed), for: .touchUpInside)
        self.view.addSubview(button)
        
        // Criar o botão 2
        let button2 = UIButton(type: .system)
        button2.setTitle("Voltar para tela azul", for: .normal)
        button2.setTitleColor(.black, for: .normal)
        button2.frame = CGRect(x: 100, y: 350, width: 200, height: 50)
        button2.addTarget(self, action: #selector(backToBlue), for: .touchUpInside)
        self.view.addSubview(button2)
    }

    @objc func goToRed() {
        let redScreenViewController = RedScreenViewController(nibName: nil, bundle: nil)
        navigationController?.pushViewController(redScreenViewController, animated: true)
    }
    @objc func backToBlue() {
        let blueScreenViewController = BlueScreenViewController(nibName: nil, bundle: nil)
        navigationController?.pushViewController(blueScreenViewController, animated: true)
    }
}
