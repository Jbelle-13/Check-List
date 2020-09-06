//
//  ChecklistItem.swift
//  Check-List
//
//  Created by Jonathon Belliveau on 9/2/20.
//  Copyright © 2020 Jonathon Belliveau. All rights reserved.
//

import Foundation

struct ChecklistItem: Identifiable, Codable {

  // Properties
  // ==========
  
  let id = UUID()
  var name: String
  var isChecked: Bool = false

}

