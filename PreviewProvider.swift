//
//  PreviewProvider.swift
//  Burst-bagView
//
//  Created by Aditya Tyagi  on 28/09/23.
//

import Foundation
import SwiftUI

extension PreviewProvider {
    static var dev: DeveloperPreview {
            return DeveloperPreview.instance
        }
}

class DeveloperPreview {
    static let instance = DeveloperPreview()
        private init() { }
        let homeVM = ProductViewDataModel()
}
