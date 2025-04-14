#pragma once

#include <swift/bridging> // Provides the SWIFT_COMPUTED_PROPERTY macro


enum class TreeKind {
  Oak,
  Redwood,
  Willow
};

class Tree {
public:
  Tree(TreeKind kind);
  TreeKind getKind() const SWIFT_COMPUTED_PROPERTY;
private:
  TreeKind kind;
};

