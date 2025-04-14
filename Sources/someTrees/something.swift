import forestLib

public struct SomeCoolTree: CustomStringConvertible {
  
  
  
  let tree = Tree(.Oak)
  
  public var description: String {
    return String(describing: tree.kind)
  }
  
}
