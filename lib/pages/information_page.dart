import 'package:flutter/material.dart';

class InformationPage extends StatelessWidget {
  final Map<String, String> components = {
    'Процессор': 'Intel Core i7-10700K',
    'Видеокарта': 'NVIDIA GeForce RTX 3080',
    'RAM': '32GB DDR4',
    'Хранилище памяти': '1TB SSD',
    'Наушники': 'Sony WH-1000XM4',
    'Мышь': 'Logitech G Pro Wireless',
    'Коврик для мыши': 'SteelSeries QcK Prism XL',
    'Клавиатура' : 'Logitech G613',
    'Монитор': 'Xiaomi Redmi Surface Display G34WQ'
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Характеристики Компьютера'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: components.length,
        itemBuilder: (context, index) {
          final key = components.keys.elementAt(index);
          final value = components.values.elementAt(index);
          return ListTile(
            title: Text(key),
            subtitle: Text(value),
          );
        },
      ),
    );
  }
}
