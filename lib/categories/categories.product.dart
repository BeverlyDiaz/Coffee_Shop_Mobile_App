class categorie {
  late String Type;

  categorie(this.Type);

  static List<categorie> categories() {
    return [
      categorie("All"),
      categorie("Coffee"),
      categorie("Tea"),
      categorie("Meal"),
      categorie("Chocolate"),
    ];
  }
}
