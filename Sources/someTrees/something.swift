import forestLib

public struct SomeCoolTree: CustomStringConvertible {
  
  public init() {
    self.tree = Tree(.Oak)
  }
  let tree: Tree
  
  public var description: String {
    return String(describing: tree.kind)
  }
  
}
