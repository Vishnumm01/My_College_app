// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';

class Canteen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get the current day of the week
    DateTime now = DateTime.now();
    int currentDay = now.weekday;

    // Define dishes availability for each day of the week
    Map<int, List<Dish>> dailyDishes = {
      DateTime.monday: [
        Dish(
          name: 'Idli',price: 10,available: true,imageUrl:
            'https://cdn.pixabay.com/photo/2017/12/09/08/18/pizza-3007395_960_720.jpg',),
        Dish(
          name: 'Dosa',price: 10,available: true,
          imageUrl:
              'https://cdn.pixabay.com/photo/2017/12/09/08/18/pizza-3007395_960_720.jpg',),
        Dish(name: 'Egg curry',price: 20,available: true,
          imageUrl:
              'https://cdn.pixabay.com/photo/2017/12/09/08/18/pizza-3007395_960_720.jpg',),
        
        Dish(
          name: 'Pazham Pori',price: 10,available: true,
          imageUrl:
              'https://cdn.pixabay.com/photo/2017/12/09/08/18/pizza-3007395_960_720.jpg',
        ),
        Dish(
          name: 'Bhaji',
          price: 10,
          available: true,
          imageUrl:
              'https://cdn.pixabay.com/photo/2017/12/09/08/18/pizza-3007395_960_720.jpg',
        ),
        Dish(
          name: 'Tea',
          price: 10,
          available: true,
          imageUrl:
              'https://cdn.pixabay.com/photo/2017/12/09/08/18/pizza-3007395_960_720.jpg',
        ),
        Dish(
          name: 'Oonu',
          price: 30,
          available: true,
          imageUrl:
              'https://cdn.pixabay.com/photo/2017/12/09/08/18/pizza-3007395_960_720.jpg',
        ),
        Dish(
          name: 'Lime juice',
          price: 10,
          available: true,
          imageUrl:
              'https://cdn.pixabay.com/photo/2016/03/05/19/37/appetite-1238459_960_720.jpg',
        ),
        
        // Add more dishes available on Monday
      ],
      DateTime.tuesday: [
        Dish(
          name: 'ucha Oonu',
          price: 30,
          available: true,
          imageUrl:
              'https://b.zmtcdn.com/data/pictures/chains/5/18892545/6c58607e99f11e40968a90883ff70f1d.jpg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A',
        ),
        Dish(
         name: 'Dosa',
          price: 10,
          available: true,
          imageUrl:
              'https://www.kannammacooks.com/wp-content/uploads/tomato-dosai-1-4.jpg',
        ),
        Dish(
          name: 'Puttu',
          price: 10,
          available: true,
          imageUrl:
              'https://cdn.pixabay.com/photo/2017/12/09/08/18/pizza-3007395_960_720.jpg',
        ),
        Dish(
          name: 'Kadala curry',
          price: 20,
          available: true,
          imageUrl:
              'https://cdn.pixabay.com/photo/2017/12/09/08/18/pizza-3007395_960_720.jpg',
        ),
         Dish(
          name: 'Fish fry',
          price: 20,
          available: true,
          imageUrl:
              'https://cdn.pixabay.com/photo/2017/05/14/16/46/fruit-2319871_960_720.jpg',
        ),
        
        Dish(
          name: 'Pazham Pori',
          price: 10,
          available: true,
          imageUrl:
              'https://cdn.pixabay.com/photo/2017/12/09/08/18/pizza-3007395_960_720.jpg',
        ),
        Dish(
          name: 'Bhaji',
          price: 10,
          available: true,
          imageUrl:
              'https://cdn.pixabay.com/photo/2017/12/09/08/18/pizza-3007395_960_720.jpg',
        ),
        Dish(
          name: 'Tea',
          price: 10,
          available: true,
          imageUrl:
              'https://cdn.pixabay.com/photo/2017/12/09/08/18/pizza-3007395_960_720.jpg',
        ),
        Dish(
          name: 'Lime juice',
          price: 10,
          available: true,
          imageUrl:
              'https://cdn.pixabay.com/photo/2017/12/09/08/18/pizza-3007395_960_720.jpg',
        ),
        // Add more dishes avai

        // Add more dishes available on Tuesday
      ],
      DateTime.wednesday: [
        Dish(
          name: 'ucha Oonu',
          price: 30,
          available: true,
          imageUrl:
              'https://b.zmtcdn.com/data/pictures/chains/5/18892545/6c58607e99f11e40968a90883ff70f1d.jpg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A',
        ),
        Dish(
         name: 'Chikken Biryani',
          price: 60,
          available: true,
          imageUrl:
              'https://img.onmanorama.com/content/dam/mm/en/food/in-season/Ramzan/Images/hyderabadi-dum-biryani.jpg.transform/576x300/image.jpg',
        ),
        Dish(
         name: 'Idli',
          price: 10,
          available: true,
          imageUrl:
              'https://c.ndtvimg.com/2023-03/95a2q19_idli_625x300_30_March_23.jpg?im=FaceCrop,algorithm=dnn,width=1200,height=886',
        ),
        
       
        
        Dish(
          name: 'Pazham Pori',
          price: 10,
          available: true,
          imageUrl:
              'https://pbs.twimg.com/media/FYxFAQJaIAEUULW.png',
        ),
        Dish(
          name: 'parippu vada',
          price: 10,
          available: true,
          imageUrl:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTj8Z_gsc9hQGplQpcssREah_SsJRVu9Z2nVg&usqp=CAU',
        ),
        Dish(
          name: 'Tea',
          price: 10,
          available: true,
          imageUrl:
              'https://whittockconsulting.co.uk/wp-content/uploads/2019/10/dreamstime_xs_123605413.jpg',
        ),
        Dish(
          name: 'Lime juice',
          price: 10,
          available: true,
          imageUrl:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSLUl12NsPUmOi96eUmy2_lI7mNqTJzfie-A&usqp=CAU',
        ),
        // Add more dishes available on Wednesday
      ],
      DateTime.thursday: [
       
         Dish(
          name: 'ucha Oonu',
          price: 30,
          available: true,
          imageUrl:
              'https://cdn.pixabay.com/photo/2016/03/05/19/37/appetite-1238459_960_720.jpg',
        ),
        Dish(
         name: 'Dosa',
          price: 10,
          available: true,
          imageUrl:
              'https://cdn.pixabay.com/photo/2017/12/09/08/18/pizza-3007395_960_720.jpg',
        ),
        Dish(
          name: 'Puttu',
          price: 10,
          available: true,
          imageUrl:
              'https://cdn.pixabay.com/photo/2017/12/09/08/18/pizza-3007395_960_720.jpg',
        ),
        Dish(
          name: 'Kadala curry',
          price: 20,
          available: true,
          imageUrl:
              'https://cdn.pixabay.com/photo/2017/12/09/08/18/pizza-3007395_960_720.jpg',
        ),
         Dish(
          name: 'Vegetable Kuruma',
          price: 4.99,
          available: true,
          imageUrl:
              'https://cdn.pixabay.com/photo/2017/05/14/16/46/fruit-2319871_960_720.jpg',
        ),
        
        Dish(
          name: 'Pazham Pori',
          price: 10,
          available: true,
          imageUrl:
              'https://cdn.pixabay.com/photo/2017/12/09/08/18/pizza-3007395_960_720.jpg',
        ),
        Dish(
          name: 'Bhaji',
          price: 10,
          available: true,
          imageUrl:
              'https://cdn.pixabay.com/photo/2017/12/09/08/18/pizza-3007395_960_720.jpg',
        ),
        Dish(
          name: 'Tea',
          price: 10,
          available: true,
          imageUrl:
              'https://cdn.pixabay.com/photo/2017/12/09/08/18/pizza-3007395_960_720.jpg',
        ),
        Dish(
          name: 'Lime juice',
          price: 10,
          available: true,
          imageUrl:
              'https://cdn.pixabay.com/photo/2017/12/09/08/18/pizza-3007395_960_720.jpg',
        ),
        // Add more dishes available on Thursday
      ],
      DateTime.friday: [
        Dish(
          name: 'ucha Oonu',
          price: 30,
          available: true,
          imageUrl:
              'https://cdn.pixabay.com/photo/2016/03/05/19/37/appetite-1238459_960_720.jpg',
        ),
        Dish(
         name: 'Dosa',
          price: 10,
          available: true,
          imageUrl:
              'https://cdn.pixabay.com/photo/2017/12/09/08/18/pizza-3007395_960_720.jpg',
        ),
        Dish(
          name: 'Idli',
          price: 10,
          available: true,
          imageUrl:
              'https://cdn.pixabay.com/photo/2017/12/09/08/18/pizza-3007395_960_720.jpg',
        ),
        Dish(
          name: 'Kadala curry',
          price: 20,
          available: true,
          imageUrl:
              'https://cdn.pixabay.com/photo/2017/12/09/08/18/pizza-3007395_960_720.jpg',
        ),
         Dish(
          name: 'Fish fry',
          price: 20,
          available: true,
          imageUrl:
              'https://cdn.pixabay.com/photo/2017/05/14/16/46/fruit-2319871_960_720.jpg',
        ),
        
        Dish(
          name: 'Bhaji',
          price: 10,
          available: true,
          imageUrl:
              'https://cdn.pixabay.com/photo/2017/12/09/08/18/pizza-3007395_960_720.jpg',
        ),
        Dish(
          name: 'Tea',
          price: 10,
          available: true,
          imageUrl:
              'https://cdn.pixabay.com/photo/2017/12/09/08/18/pizza-3007395_960_720.jpg',
        ),
        Dish(
          name: 'Lime juice',
          price: 10,
          available: true,
          imageUrl:
              'https://cdn.pixabay.com/photo/2017/12/09/08/18/pizza-3007395_960_720.jpg',
        ),
       
        // Add more dishes available on Friday
      ],
    };

    List<Dish>? dishesForToday = dailyDishes[currentDay];

    if (dishesForToday != null) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Canteen'),
          backgroundColor: Colors.lightBlue,
        ),
        body: CanteenMenu(dishes: dishesForToday),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: Text('Canteen Closed'),
          backgroundColor: Colors.lightBlue,
        ),
        body: Center(
          child: Text(
            'Canteen is closed today',
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
        ),
      );
    }
  }
}

class CanteenMenu extends StatelessWidget {
  final List<Dish> dishes;

  CanteenMenu({required this.dishes});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dishes.length,
      itemBuilder: (BuildContext context, int index) {
        Dish dish = dishes[index];
        return ListTile(
          title: Text(
            dish.name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          subtitle: Text('\$${dish.price.toStringAsFixed(0)}',
              style: TextStyle(fontWeight: FontWeight.bold)),
          leading: CircleAvatar(
            backgroundImage: NetworkImage(dish.imageUrl),
          ),
          trailing: ElevatedButton(
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white, backgroundColor: dish.available ? Colors.green : Colors.grey,
            ),
            child: Text(
              dish.available ? 'Add to Cart' : 'Not Available',
              style: TextStyle(fontWeight: FontWeight.bold),
              
            ),
            
            onPressed: () {
              if (dish.available) {
                // Add purchase functionality here
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text('Added ${dish.name} to cart'),
                ));
              } else {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text('${dish.name} is not available'),
                ));
              }
              
            },
            
          ),
        
        );
      },
    );
  }
}

class Dish {
  final String name;
  final double price;
  final bool available;
  final String imageUrl;

  Dish({
    required this.name,
    required this.price,
    required this.available,
    required this.imageUrl,
  });
}


