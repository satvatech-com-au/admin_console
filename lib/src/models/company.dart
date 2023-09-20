class Company {
  final String name;
  final int id;
  final String monthDue;
  final String dueAmount;
  Company({
    required this.name,
    required this.id,
    required this.monthDue,
    required this.dueAmount,
  });
}

final List<Company> companies = [
  Company(
      name: 'TechSavvy Innovations',
      id: 1000001,
      monthDue: 'June',
      dueAmount: '\$287'),
  Company(
      name: 'Galactic Robotics',
      id: 1000002,
      monthDue: 'July',
      dueAmount: '\$325'),
  Company(
      name: 'AquaFusion Inc.',
      id: 1000003,
      monthDue: 'May',
      dueAmount: '\$210'),
  Company(
      name: 'FantomWorks Ltd.',
      id: 1000004,
      monthDue: 'August',
      dueAmount: '\$450'),
  Company(
      name: 'EcoTech Solutions',
      id: 1000005,
      monthDue: 'April',
      dueAmount: '\$175'),
  Company(
      name: 'Inferno Games Studio',
      id: 1000006,
      monthDue: 'September',
      dueAmount: '\$310'),
  Company(
      name: 'Quantum Industries',
      id: 1000007,
      monthDue: 'October',
      dueAmount: '\$280'),
  Company(
      name: 'Zenith Innovations',
      id: 1000008,
      monthDue: 'November',
      dueAmount: '\$295'),
  Company(
      name: 'Nebula Technologies',
      id: 1000009,
      monthDue: 'December',
      dueAmount: '\$320'),
];
