import 'package:dawatulkhair/screens/book_screen.dart';
import 'package:dawatulkhair/widgets/card.dart';
import 'package:flutter/material.dart';

class Item {
  final String title;
  final String imageUrl;
  final String? description;

  Item({required this.title, required this.imageUrl, this.description});
}

class BooksView extends StatelessWidget {
  final List<Item> items = [
    Item(
        title: 'Book 1',
        imageUrl: 'assets/images/book1.jpg',
        description:
            'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available'
            'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available'),
    Item(
        title: 'Book 2',
        imageUrl: 'assets/images/book2.jpg',
        description:
            'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available'),
    Item(
        title: 'Book 3',
        imageUrl: 'assets/images/book3.jpg',
        description:
            'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available'),
    Item(
        title: 'Book 3',
        imageUrl: 'assets/images/book4.jpg',
        description:
            'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available'),
    Item(
        title: 'Book 5',
        imageUrl: 'assets/images/book5.jpg',
        description:
            'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available'),
    Item(
        title: 'Book 6',
        imageUrl: 'assets/images/book6.jpg',
        description:
            'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available'),
    Item(
        title: 'Book 7',
        imageUrl: 'assets/images/book1.jpg',
        description:
            'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available'),
    Item(
        title: 'Book 8',
        imageUrl: 'assets/images/book2.jpg',
        description:
            'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available'),
    Item(
        title: 'Book 9',
        imageUrl: 'assets/images/book3.jpg',
        description:
            'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available'),
    Item(
        title: 'Book 10',
        imageUrl: 'assets/images/book4.jpg',
        description:
            'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available'),
    Item(
        title: 'Book 11',
        imageUrl: 'assets/images/book5.jpg',
        description:
            'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available'),
    Item(
        title: 'Book 12',
        imageUrl: 'assets/images/book6.jpg',
        description:
            'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available'),
    Item(
        title: 'Book 1',
        imageUrl: 'assets/images/book1.jpg',
        description:
            'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available'),
    Item(
        title: 'Book 2',
        imageUrl: 'assets/images/book2.jpg',
        description:
            'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available'),
    Item(
        title: 'Book 3',
        imageUrl: 'assets/images/book3.jpg',
        description:
            'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available'),
    Item(
        title: 'Book 3',
        imageUrl: 'assets/images/book4.jpg',
        description:
            'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available'),
    Item(
        title: 'Book 5',
        imageUrl: 'assets/images/book5.jpg',
        description:
            'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available'),
    Item(
        title: 'Book 6',
        imageUrl: 'assets/images/book6.jpg',
        description:
            'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available'),
    Item(
        title: 'Book 7',
        imageUrl: 'assets/images/book1.jpg',
        description:
            'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available'),
    Item(
        title: 'Book 8',
        imageUrl: 'assets/images/book2.jpg',
        description:
            'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available'),
    Item(
        title: 'Book 9',
        imageUrl: 'assets/images/book3.jpg',
        description:
            'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available'),
    Item(
        title: 'Book 10',
        imageUrl: 'assets/images/book4.jpg',
        description:
            'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available'),
    Item(
        title: 'Book 11',
        imageUrl: 'assets/images/book5.jpg',
        description:
            'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available'),
    Item(
        title: 'Book 12',
        imageUrl: 'assets/images/book6.jpg',
        description:
            'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available'),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        height: 1500,
        child: GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, childAspectRatio: (150.0 / 220.0)),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BookScreen(
                                title: item.title,
                                image: item.imageUrl,
                                description: item.description!,
                              )));
                },
                child: CustomCard(title: item.title, image: item.imageUrl));
          },
        ),
      ),
    );
  }
}
