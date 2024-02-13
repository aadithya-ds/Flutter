import "package:flutter/material.dart";

//this is for ListView() and ListTile()

//this is for ListView.builder()

//this is for ListView.seperated()
class RecipeList extends StatelessWidget {
  const RecipeList({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      "Pizza",
      "Burger",
      "Sushi",
      "Taco",
      "French fries",
    ];

    final images = [
      "https://images.pexels.com/photos/2619967/pexels-photo-2619967.jpeg?cs=srgb&dl=pizza-2619967.jpg&fm=jpg",
      "https://cdn2.tmbi.com/TOH/Images/Photos/37/1200x1200/exps41063_SD163614D12_01_3b.jpg",
      "https://th.bing.com/th/id/OIP.g0gnqgwDbXjHZxkVHA9CNAHaE8?rs=1&pid=ImgDetMain",
      "https://th.bing.com/th/id/R.29d71f83ddc95f2e0ed25142e2cf80ab?rik=uWWhOJerW9gHYA&riu=http%3a%2f%2fforevertwentysomethings.com%2fwp-content%2fuploads%2f2016%2f10%2ftacos.jpg&ehk=%2b4em9gTW65oi2Fbr8uJdc5XILlgBOD5y9YE%2f9IlmSoo%3d&risl=&pid=ImgRaw&r=0",
      "https://static.fanpage.it/wp-content/uploads/sites/22/2020/09/iStock-618214356.jpg"
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "ListView with images",
          style: TextStyle(
            color: Color.fromARGB(255, 243, 239, 239),
          ),
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.separated(
            physics: BouncingScrollPhysics(),
            itemCount: items.length,
            separatorBuilder: (_, __) =>
                const Divider(color: Colors.black, height: 10),
            itemBuilder: (_, index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(images[index]),
                ),
                title: Text(items[index],
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold)),
                subtitle: const Text("Recipe"),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  print("Item : ${items[index]}");
                },
              );
            },
          )),
    );
  }
}
