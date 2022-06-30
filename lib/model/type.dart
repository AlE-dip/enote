class Type {
  int id;
  String name;

  Type(this.id, this.name);

// @Override
  // public boolean equals(Object o) {
  //   if (this == o) return true;
  //   if (o == null || getClass() != o.getClass()) return false;
  //   Type type = (Type) o;
  //   return id == type.id && Objects.equals(name, type.name);
  // }
  //
  // @Override
  // public int hashCode() {
  //   return Objects.hash(id, name);
  // }
}