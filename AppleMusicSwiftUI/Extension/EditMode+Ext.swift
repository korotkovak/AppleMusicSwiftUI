//
//  EditMode + Ext.swift
//  AppleMusicSwiftUI
//
//  Created by Kristina Korotkova on 30/03/23.
//

import SwiftUI

extension EditMode {
    mutating func toggle() {
        self = self == .active ? .inactive : .active
    }
}
