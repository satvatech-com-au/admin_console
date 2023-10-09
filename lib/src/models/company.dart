class Company {
  final String name;
  final int id;
  final String monthDue;
  final int dueAmount;
  final String address;
  final String email;
  final String paymentStatus;
  final String paymentMethod;
  final String paymentDate;

  Company({
    required this.name,
    required this.id,
    required this.monthDue,
    required this.dueAmount,
    required this.address,
    required this.email,
    required this.paymentStatus,
    required this.paymentMethod,
    required this.paymentDate,
  });
}

final List<Company> companies = [
  Company(
    name: 'TechSavvy Innovations',
    id: 1000001,
    monthDue: 'June',
    dueAmount: 287,
    address: '123 Main St, City, Country',
    email: 'techsavvy@example.com',
    paymentStatus: 'Paid',
    paymentMethod: 'Credit Card',
    paymentDate: '2023-06-15',
  ),
  Company(
    name: 'Galactic Robotics',
    id: 1000002,
    monthDue: 'July',
    dueAmount: 325,
    address: '456 Elm St, City, Country',
    email: 'galactic@example.com',
    paymentStatus: 'Pending',
    paymentMethod: 'Bank Transfer',
    paymentDate: '2023-07-10',
  ),
  Company(
    name: 'AquaFusion Inc.',
    id: 1000003,
    monthDue: 'May',
    dueAmount: 210,
    address: '789 Oak St, City, Country',
    email: 'aquafusion@example.com',
    paymentStatus: 'Paid',
    paymentMethod: 'PayPal',
    paymentDate: '2023-05-20',
  ),
  Company(
    name: 'FantomWorks Ltd.',
    id: 1000004,
    monthDue: 'August',
    dueAmount: 450,
    address: '101 Pine St, City, Country',
    email: 'fantomworks@example.com',
    paymentStatus: 'Pending',
    paymentMethod: 'Credit Card',
    paymentDate: '2023-08-05',
  ),
  Company(
    name: 'EcoTech Solutions',
    id: 1000005,
    monthDue: 'April',
    dueAmount: 175,
    address: '202 Cedar St, City, Country',
    email: 'ecotech@example.com',
    paymentStatus: 'Paid',
    paymentMethod: 'Bank Transfer',
    paymentDate: '2023-04-25',
  ),
  Company(
    name: 'Inferno Games Studio',
    id: 1000006,
    monthDue: 'September',
    dueAmount: 310,
    address: '303 Maple St, City, Country',
    email: 'inferno@example.com',
    paymentStatus: 'Pending',
    paymentMethod: 'PayPal',
    paymentDate: '2023-09-15',
  ),
  Company(
    name: 'Quantum Industries',
    id: 1000007,
    monthDue: 'October',
    dueAmount: 280,
    address: '404 Birch St, City, Country',
    email: 'quantum@example.com',
    paymentStatus: 'Paid',
    paymentMethod: 'Credit Card',
    paymentDate: '2023-10-10',
  ),
  Company(
    name: 'Zenith Innovations',
    id: 100000,
    monthDue: 'November',
    dueAmount: 295,
    address: '505 Redwood St, City, Country',
    email: 'zenith@example.com',
    paymentStatus: 'Pending',
    paymentMethod: 'Bank Transfer',
    paymentDate: '2023-11-20',
  ),
  Company(
    name: 'Nebula Technologies',
    id: 1000009,
    monthDue: 'December',
    dueAmount: 320,
    address: '606 Spruce St, City, Country',
    email: 'nebula@example.com',
    paymentStatus: 'Paid',
    paymentMethod: 'PayPal',
    paymentDate: '2023-12-05',
  ),
  Company(
    name: 'Sunrise Software',
    id: 1000010,
    monthDue: 'January',
    dueAmount: 273,
    address: '707 Oak St, City, Country',
    email: 'sunrise@example.com',
    paymentStatus: 'Pending',
    paymentMethod: 'Credit Card',
    paymentDate: '2024-01-15',
  ),
];
