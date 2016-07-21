//
//  Tuple.swift
//  LispKit
//
//  Created by Matthias Zenger on 15/07/2016.
//  Copyright © 2016 ObjectHub. All rights reserved.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

///
/// `Tuple` implements two mutable expressions.
///
public final class Tuple: ManagedObject, CustomStringConvertible {
  
  /// The current value of the variable.
  public var fst: Expr
  public var snd: Expr
  
  /// Maintain object statistics.
  internal static let stats = Stats("Tuple")
  
  /// Update object statistics.
  deinit {
    Tuple.stats.dealloc()
  }
  
  /// Create a new tuple with initial values for `fst` and `snd`.
  public init(_ fst: Expr = .Undef, _ snd: Expr = .Undef) {
    self.fst = fst
    self.snd = snd
    super.init(Tuple.stats)
  }
  
  /// Mark tuple object.
  public override func mark(tag: UInt8) {
    if self.tag != tag {
      self.tag = tag
      self.fst.mark(tag)
      self.snd.mark(tag)
    }
  }
  
  /// Clear tuple
  public override func clean() {
    self.fst = .Undef
    self.snd = .Undef
  }
  
  /// A string representation of this tuple.
  public var description: String {
    return "«\(self.fst), \(self.snd)»"
  }
}