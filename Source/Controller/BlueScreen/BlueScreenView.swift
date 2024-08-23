//
//  BlueScreenView.swift
//  TelasSwift
//
//  Created by IFBIOTIC20 on 23/08/24.
//

import Foundation
import UIKit

class BlueScreenView: UIView {
    //MARK: - Initialize
    override init(frame: CGRect) {
        //chama o frame da superclasse
        super.init(frame: frame)
        // muda a cor de fundo do app para branco
        self.backgroundColor = .blue
        
        setupVisualElements()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setupVisualElements() {
        
    }
}
