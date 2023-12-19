class ACServiceUtil {
  static List<String> getSelectedIssuesForAC(
    bool isLessCooling,
    bool isDusting,
    bool isLeaking,
    bool isNotCooling,
    bool wontTurnOn,
    bool soundIssue,
    bool smellIssue,
    bool shakingIssue,
    bool electricIssue,
    bool fanIssue,
  ) {
    List<String> selectedIssues = [];
    if (isLessCooling) selectedIssues.add('Kurang dingin');
    if (isDusting) selectedIssues.add('Berdebu');
    if (isLeaking) selectedIssues.add('Bocor');
    if (isNotCooling) selectedIssues.add('Tidak dingin');
    if (wontTurnOn) selectedIssues.add('Tidak dapat menyala');
    if (soundIssue) selectedIssues.add('Terdengar suara bising');
    if (smellIssue) selectedIssues.add('Berbau tidak sedap');
    if (shakingIssue) selectedIssues.add('Bergetar saat menyala');
    if (electricIssue) selectedIssues.add('Tidak dapat terhubung ke listrik');
    if (fanIssue) selectedIssues.add('Kipas AC tidak berputar');

    return selectedIssues;
  }
}
