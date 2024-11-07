import '../models/models.dart';

// ExploreData sert de conteneur de données qui contient une liste de
// restaurants de categories de nourriture et de publications damis.
class ExploreData {
  final List<Restaurant> restaurants;
  final List<FoodCategory> categories;
  final List<Post> friendPosts;

  ExploreData(this.restaurants, this.categories, this.friendPosts);
}

// Mock Yummy service qui récupère des données d'exemple pour simuler une requête/réponse d'une application de nourriture
class MockYummyService {
  // Requête par lots qui obtient à la fois les recettes du jour et le fil
  // dactualité des amis
  Future<ExploreData> getExploreData() async {
    final restaurants = await _getRestaurants();
    final categories = await _getCategories();
    final friendPosts = await _getFriendFeed();

    return ExploreData(restaurants, categories, friendPosts);
  }

  // Obtenir des catégories de nourriture d'exemple à afficher dans
  //l'interface utilisateur
  Future<List<FoodCategory>> _getCategories() async {
    // **Simuler le temps d'attente de la requête API**
    await Future.delayed(const Duration(milliseconds: 1000));
    // **Renvoyer des catégories factices**
    return categories;
  }

  // **Obtenir les publications des amis à afficher dans l'interface utilisateur
  Future<List<Post>> _getFriendFeed() async {
    // **Simuler le temps d'attente de la requête API**
    await Future.delayed(const Duration(milliseconds: 1000));
    // **Renvoyer des publications factices**
    return posts;
  }

  // **Obtenir les restaurants à afficher dans l'interface utilisateur**
  Future<List<Restaurant>> _getRestaurants() async {
    // **Simuler le temps d'attente de la requête API**
    await Future.delayed(const Duration(milliseconds: 1000));
    // **Renvoyer des restaurants factices**
    return restaurants;
  }
}
