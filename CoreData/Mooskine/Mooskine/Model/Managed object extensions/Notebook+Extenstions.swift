//
//  Notebook+Extenstions.swift
//  Mooskine
//
//  Created by yusef naser on 1/2/21.
//  Copyright © 2021 Udacity. All rights reserved.
//
import Foundation

extension Notebook {
    
    public override func awakeFromInsert() {
        super.awakeFromInsert()
        creationDate = Date()
    }
    
}
