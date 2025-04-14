#include "include/forest.h++"

Tree::Tree(TreeKind kind) : kind{kind}
{
}

TreeKind Tree::getKind() const
{
  return this->kind;
}
