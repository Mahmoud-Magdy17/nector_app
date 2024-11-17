class CategoryFilter {
  bool eggs = false;
  bool noodlesAndPasta = false;
  bool chipsAndCrisps = false;
  bool fastFood = false;

  checkEggsFilter() {
    eggs = !eggs;
  }

  void checkNoodlesAndPastaFilter() {
    noodlesAndPasta = !noodlesAndPasta;
  }

  void checkChipsAndCrispsFilter() {
    chipsAndCrisps = !chipsAndCrisps;
  }

  void checkFastFoodFilter() {
    fastFood = !fastFood;
  }

  void resetFilters() {
    eggs = false;
    noodlesAndPasta = false;
    chipsAndCrisps = false;
    fastFood = false;
  }
}
