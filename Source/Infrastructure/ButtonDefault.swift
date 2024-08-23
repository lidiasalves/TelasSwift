//
//  ButtonDefault.swift
//  TelasSwift
//
//  Created by IFBIOTIC20 on 23/08/24.
//

import Foundation
import UIKit

class ButtonDefault: UIButton {
    
    init(botao: String) {
        super.init(frame: .zero)
        initDefault(botao: botao)
      }
    
    
    
    private func initDefault(botao: String) {
        self.setTitle("Botão", for: .normal)
        self.backgroundColor = .white
        self.layer.cornerRadius = 16
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
