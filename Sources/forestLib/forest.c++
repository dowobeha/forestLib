#include "include/forest.h++"

Tree::Tree(TreeKind kind) : kind{kind}
{
  // This space intentionally left blank
}

TreeKind Tree::getKind() const
{
  return this->kind;
}
