//
//  IndexedCollection.swift
//  Check-List
//
//  Created by Jonathon Belliveau on 9/2/20.
//  Copyright © 2020 Jonathon Belliveau. All rights reserved.
//

import SwiftUI

public struct IndexedCollection<Base: RandomAccessCollection>: RandomAccessCollection {
  let base: Base
}

//MARK: RandomAccessCollection
public extension IndexedCollection {
  typealias Index = Base.Index
  typealias Element = (index: Index, element: Base.Element)
  
  var startIndex: Index { base.startIndex }
  
  var endIndex: Index { base.endIndex }
  
  func index(after i: Index) -> Index {
    base.index(after: i)
  }
  
  func index(before i: Index) -> Index {
    base.index(before: i)
  }
  
  func index(_ i: Index, offsetBy distance: Int) -> Index {
    base.index(i, offsetBy: distance)
  }
  
  subscript(position: Index) -> Element {
    (index: position, element: base[position])
  }
}

