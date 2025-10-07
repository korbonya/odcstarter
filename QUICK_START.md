# 🚀 Quick Start - Flutter Starter

## Démarrage rapide (5 minutes)

### 1. Installation des dépendances
```bash
cd g:\odc\starter
flutter pub get
```

### 2. Lancer l'application

#### Méthode recommandée: Web Server
```bash
flutter run -d web-server --web-port=8080
```
Puis ouvrez votre navigateur à: **http://localhost:8080**

#### Ou utilisez les scripts:
```powershell
# PowerShell
.\run_web.ps1 server

# Ou Batch
run_web.bat server
```

### 3. Développement

L'application supporte le **hot reload**:
- Modifiez un fichier `.dart`
- Sauvegardez (Ctrl+S)
- L'application se recharge automatiquement!

## Structure du projet

```
lib/
├── main.dart                    # Point d'entrée
├── models/
│   └── product.dart            # Modèle de données Product
├── screens/
│   ├── product_list.dart       # Écran liste des produits
│   └── product_detail.dart     # Écran détail d'un produit
├── widgets/
│   └── product_tile.dart       # Widget réutilisable pour un produit
├── providers/
│   └── counter_provider.dart   # Provider Riverpod (exemple)
└── services/
    ├── api_service.dart        # Service API (Dio)
    └── local_storage.dart      # Stockage local (SharedPreferences)
```

## Fonctionnalités incluses

✅ **Navigation** - Entre les écrans  
✅ **State Management** - Riverpod configuré  
✅ **API Service** - Dio pour les appels HTTP  
✅ **Local Storage** - SharedPreferences pour le cache  
✅ **Modèles de données** - Product avec sérialisation  
✅ **Widgets réutilisables** - ProductTile  

## Prochaines étapes

### 1. Personnaliser l'interface
Modifiez `lib/screens/product_list.dart` pour changer l'apparence.

### 2. Ajouter des produits
Éditez le tableau `sampleProducts` dans `product_list.dart`:
```dart
const sampleProducts = [
  {'id': '1', 'name': 'Chaussures', 'price': 50},
  {'id': '2', 'name': 'Sac', 'price': 30},
  {'id': '3', 'name': 'Montre', 'price': 100},
  // Ajoutez vos produits ici!
];
```

### 3. Connecter une vraie API
Modifiez `lib/services/api_service.dart`:
```dart
Future<List<Product>> fetchProducts() async {
  final res = await dio.get('https://votre-api.com/products');
  return (res.data as List).map((e) => Product.fromMap(e)).toList();
}
```

### 4. Utiliser le state management
Exemple avec Riverpod dans `product_list.dart`:
```dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/counter_provider.dart';

// Dans votre widget:
class ProductList extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(counterProvider);
    // Utilisez counter...
  }
}
```

## Commandes utiles

```bash
# Lancer l'app
flutter run -d web-server --web-port=8080

# Lancer les tests
flutter test

# Nettoyer le projet
flutter clean

# Mettre à jour les dépendances
flutter pub get

# Analyser le code
flutter analyze

# Formater le code
flutter format lib/

# Build pour production
flutter build web --release
```

## Problèmes?

- **Chrome ne se lance pas?** → Utilisez `web-server` mode (voir ci-dessus)
- **Erreurs de compilation?** → `flutter clean && flutter pub get`
- **Hot reload ne marche pas?** → Tapez `r` dans le terminal

📖 **Guide complet:** [TROUBLESHOOTING.md](TROUBLESHOOTING.md)

## Ressources d'apprentissage

- 📚 [Documentation Flutter](https://flutter.dev/docs)
- 🎯 [Riverpod Documentation](https://riverpod.dev)
- 🌐 [Dio HTTP Client](https://pub.dev/packages/dio)
- 💾 [SharedPreferences](https://pub.dev/packages/shared_preferences)

## Support

- Discord Flutter France
- Stack Overflow (tag: flutter)
- GitHub Issues du projet

---

**Bon développement! 🎉**
