enum OttType {
  netflix('001');

  final String code;

  const OttType(this.code);
}

enum PartyState {
  noAdmin('No Admin'),
  accountError('Account Error'),
  green('Green');

  final String text;

  const PartyState(this.text);
}
