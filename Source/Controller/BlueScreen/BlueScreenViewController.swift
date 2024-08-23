//
//  BlueScreenViewController.swift
//  TelasSwift
//
//  Created by IFBIOTIC20 on 23/08/24.
//


import Foundation
import UIKit

class BlueScreenViewController: UIViewController {
    //cria uma variável
    lazy var viewMain: BlueScreenView = {
        let blueScreen = BlueScreenView()
        
        return blueScreen
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
        button.setTitle("Ir para tela verde", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.frame = CGRect(x: 100, y: 300, width: 200, height: 50)
        button.addTarget(self, action: #selector(goToGreen), for: .touchUpInside)
        self.view.addSubview(button)
    }

    @objc func goToGreen() {
        let greenScreenViewController = GreenScreenViewController(nibName: nil, bundle: nil)
        navigationController?.pushViewController(greenScreenViewController, animated: true)
    }
}
