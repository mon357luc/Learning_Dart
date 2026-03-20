class House {
  List<({String verb, String noun})> verses = [
    (verb: '', noun: 'horse and the hound and the horn'),
    (verb: 'belonged to', noun: 'farmer sowing his corn'),
    (verb: 'kept', noun: 'rooster that crowed in the morn'),
    (verb: 'woke', noun: 'priest all shaven and shorn'),
    (verb: 'married', noun: 'man all tattered and torn'),
    (verb: 'kissed', noun: 'maiden all forlorn'),
    (verb: 'milked', noun: 'cow with the crumpled horn'),
    (verb: 'tossed', noun: 'dog'),
    (verb: 'worried', noun: 'cat'),
    (verb: 'killed', noun: 'rat'),
    (verb: 'ate', noun: 'malt'),
    (verb: 'lay in', noun: 'house that Jack built')
  ];

  String recite(int startVerse, int endVerse) {
    String result = '';
    for (int i = startVerse; i <= endVerse; i++) {
      result += buildVerse(i) + '\n';
    }
    print(result);
    return result.trim();
  }

  String buildVerse(int verseNumber) {
    String result = 'This is the ${verses[12 - verseNumber--].noun}';
    for (int i = verseNumber; i >= 1; i--) {
      result += ' that ${verses[12 - i].verb} the ${verses[12 - i].noun}';
    }
    return result + '.';
  }
}
