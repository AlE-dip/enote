class RelationWord {
  static final int RELATED = 0;
  static final int SYNONYM = 1;
  static final int ANTONYM = 2;

  int id;
  int wordId;
  int relationWordId;
  int relationType;

  RelationWord(this.id, this.wordId, this.relationWordId, this.relationType);
}