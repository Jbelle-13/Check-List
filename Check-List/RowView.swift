//
//  RowView.swift
//  Check-List
//
//  Created by Jonathon Belliveau on 9/2/20.
//  Copyright © 2020 Jonathon Belliveau. All rights reserved.
//

import SwiftUI

struct RowView: View {

  // Properties
  // ==========

  @Binding var checklistItem: ChecklistItem

  // User interface content and layout
  var body: some View {
    NavigationLink(destination: EditChecklistItemView(checklistItem: $checklistItem)) {
      HStack {
        Text(checklistItem.name)
        Spacer()
        Text(checklistItem.isChecked ? "✅" : "🔲")
      }
    }
  }
}


// Preview
// =======

struct RowView_Previews: PreviewProvider {
  static var previews: some View {
    RowView(checklistItem: .constant(ChecklistItem(name: "Sample item")))
  }
}

