extension StringExtension on String {
  String get capitalize {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }

  String get formatNumberWithSpaces {
    // Reverse the string to handle grouping from the end
    String reversed = split('').reversed.join('');

    // Insert spaces every three characters
    String withSpacesReversed = reversed.replaceAllMapped(
        RegExp(r'.{3}'), (match) => '${match.group(0)} ');

    // Reverse the string back to its original order
    String withSpaces = withSpacesReversed.split('').reversed.join('').trim();

    return withSpaces;
  }
}
