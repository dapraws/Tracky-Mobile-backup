class Asset {
  final String id;
  final String image;
  final String title;
  final String description;
  final double priceItem;
  final double priceShipping;
  final DateTime purchaseTime;

  Asset({
    required this.id,
    required this.image,
    required this.title,
    required this.description,
    required this.priceItem,
    required this.priceShipping,
    required this.purchaseTime,
  });
}

var dummyAsset = [
  Asset(
    id: '1',
    image: 'https://picsum.photos/id/237/200/300',
    title: 'iPhone 15 Pro Max',
    description:
        '256 GB dan dilengkapi chip A17 Pro 256 GB dan dilengkapi chip A17 Pro 256 GB dan dilengkapi chip A17 Pro',
    priceItem: 23500000,
    priceShipping: 50000,
    purchaseTime: DateTime(2023, 11, 11),
  ),
  Asset(
    id: '2',
    image: 'https://picsum.photos/id/237/200/300',
    title: 'Ajazz AK33 Keyboard',
    description: '256 GB dan dilengkapi chip A17 Pro',
    priceItem: 499000,
    priceShipping: 9000,
    purchaseTime: DateTime(2023, 11, 11),
  ),
  Asset(
    id: '3',
    image: 'https://picsum.photos/id/237/200/300',
    title: 'Logitech M275',
    description: 'KEYBOARD LOGITECH',
    priceItem: 499000,
    priceShipping: 9000,
    purchaseTime: DateTime(2023, 11, 11),
  ),
  Asset(
    id: '1',
    image: 'https://picsum.photos/id/237/200/300',
    title: 'iPhone 15 Pro Max',
    description: '256 GB dan dilengkapi chip A17 Pro',
    priceItem: 235000000,
    priceShipping: 50000,
    purchaseTime: DateTime(2023, 11, 11),
  ),
  Asset(
    id: '2',
    image: 'https://picsum.photos/id/237/200/300',
    title: 'Ajazz AK33 Keyboard',
    description: '256 GB dan dilengkapi chip A17 Pro',
    priceItem: 499000,
    priceShipping: 9000,
    purchaseTime: DateTime(2023, 11, 11),
  ),
  Asset(
    id: '3',
    image: 'https://picsum.photos/id/237/200/300',
    title: 'Logitech M275',
    description: 'KEYBOARD LOGITECH',
    priceItem: 499000,
    priceShipping: 9000,
    purchaseTime: DateTime(2023, 11, 11),
  ),
  Asset(
    id: '1',
    image: 'https://picsum.photos/id/237/200/300',
    title: 'iPhone 15 Pro Max',
    description: '256 GB dan dilengkapi chip A17 Pro',
    priceItem: 235000000,
    priceShipping: 50000,
    purchaseTime: DateTime(2023, 11, 11),
  ),
  Asset(
    id: '2',
    image: 'https://picsum.photos/id/237/200/300',
    title: 'Ajazz AK33 Keyboard',
    description: '256 GB dan dilengkapi chip A17 Pro',
    priceItem: 499000,
    priceShipping: 9000,
    purchaseTime: DateTime(2023, 11, 11),
  ),
  Asset(
    id: '3',
    image: 'https://picsum.photos/id/237/200/300',
    title: 'Logitech M275',
    description: 'KEYBOARD LOGITECH',
    priceItem: 499000,
    priceShipping: 9000,
    purchaseTime: DateTime(2023, 11, 11),
  ),
];
