//
//  UIButtonExtension.swift
//  AnimationExtentions
//
//  Created by Juan Bonforti on 06/06/2020.
//  Copyright © 2020 Juan Bonforti. All rights reserved.
//

import UIKit

extension UIButton {

    // Todas las funciones que creemos aca, se extienden al UIButton ( Todos... )
    
    // Funcion encargada de agregar bordes redondos a un boton.
    func round() {
        // Se utiliza layer directo, ya que self, es el propio boton.
        layer.cornerRadius = bounds.height / 2
        clipsToBounds = true
    }
    
    // Animation efecto rebote
    func bounce() {
        UIView.animate(withDuration: 0.1, animations: {
            self.transform = CGAffineTransform(scaleX: 1.1, y: 1.1) // scalaremos el tamaño
        }) { (completion) in
            UIView.animate(withDuration: 0.1) {
                self.transform = .identity // valor original de la transformacion
            }
        }
    }
    
    // Animation brillar boton
    func shine() {
        UIView.animate(withDuration: 0.1, animations: {
            self.alpha = 0.5
        }) { (completion) in
            UIView.animate(withDuration: 0.1) {
                self.alpha = 1
            }
        }
    }
    
    // Animation salte
    func jump() {
        UIView.animate(withDuration: 0.1, animations: {
            self.transform = CGAffineTransform(translationX: 10, y: 0)
        }) { (completion) in
            UIView.animate(withDuration: 0.1) {
                self.transform = .identity
            }
        }
    }
    
}
