class Tag {
  int id;
  String name;

  Tag(this.id, this.name);

  // @Override
  // public boolean equals(Object o) {
  //   if (this == o) return true;
  //   if (o == null || getClass() != o.getClass()) return false;
  //   Tag tag = (Tag) o;
  //   return id == tag.id && Objects.equals(name, tag.name);
  // }
  //
  // @Override
  // public int hashCode() {
  //   return Objects.hash(id, name);
  // }
}