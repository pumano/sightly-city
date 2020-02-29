class Contact {
  final String name;
  final String description;
  final List<String> phones;
  final String email;
  final String website;
  final String address;
  final List coords;

  const Contact({
    this.name,
    this.phones,
    this.email,
    this.description,
    this.website,
    this.address,
    this.coords,
  });
}
