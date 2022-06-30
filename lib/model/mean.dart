class Mean {
  int id;
  Type? type;
  String meanWord;
  int wordId;

  Mean(this.id, this.type, this.meanWord, this.wordId);

// @Override
  // public boolean equals(Object o) {
  //   if (this == o) return true;
  //   if (o == null || getClass() != o.getClass()) return false;
  //   Mean mean = (Mean) o;
  //   return id == mean.id && wordId == mean.wordId && Objects.equals(type, mean.type) && Objects.equals(meanWord, mean.meanWord);
  // }
  //
  // @Override
  // public int hashCode() {
  //   return Objects.hash(id, type, meanWord, wordId);
  // }
}