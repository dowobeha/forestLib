import Testing
@testable import forestLib


@Suite
struct TestForest {
  
  @Test
  func treeKindEnumValues() async throws {
    #expect(TreeKind.Oak.rawValue == 0)
    #expect(TreeKind.Redwood.rawValue == 1)
    #expect(TreeKind.Willow.rawValue == 2)
  }
  
  @Test
  func tree() async throws {
    let tree = Tree(.Oak)
    #expect(tree.kind == TreeKind.Oak)
  }

}


