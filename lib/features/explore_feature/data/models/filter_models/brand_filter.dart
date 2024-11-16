class BrandFilter {
  bool individualCallection = false;
  bool cocola = false;
  bool ifad = false;
  bool kaziFarmas = false;

  void checkIndividualCallectionFilter() {
    individualCallection = !individualCallection;
  }

  void checkCocolaFilter() {
    cocola = !cocola;
  }

  void checkIfadFilter() {
    ifad = !ifad;
  }

  void checkKaziFarmasFilter() {
    kaziFarmas = !kaziFarmas;
  }

  void resetFilters() {
    individualCallection = false;
    cocola = false;
    ifad = false;
    kaziFarmas = false;
  }
}
