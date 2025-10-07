# Flutter Starter Project

This is a minimal starter project for the Flutter bootcamp.

## Structure
- lib/main.dart
- lib/models/product.dart
- lib/screens/product_list.dart
- lib/screens/product_detail.dart
- lib/widgets/product_tile.dart
- lib/services/api_service.dart
- lib/services/local_storage.dart
- lib/providers/counter_provider.dart
- pubspec.yaml
- test/widget_test.dart
- .gitignore
- .github/workflows/flutter-ci.yml

## How to run

### Installation
1. Install Flutter SDK and ensure `flutter doctor` is OK.
2. From this project root run:
   ```bash
   flutter pub get
   ```

### Running the app

#### Option 1: Web Server Mode (Recommandé pour Windows)
```bash
flutter run -d web-server --web-port=8080
```
Puis ouvrez votre navigateur à: http://localhost:8080

Ou utilisez le script PowerShell:
```powershell
.\run_web.ps1 server
```

#### Option 2: Edge Browser
```bash
flutter run -d edge
```
Ou:
```powershell
.\run_web.ps1 edge
```

#### Option 3: Windows Desktop
```bash
flutter run -d windows
```
Ou:
```powershell
.\run_web.ps1 windows
```

#### Option 4: Chrome (peut avoir des problèmes sur Windows)
```bash
flutter run -d chrome
```

### Tests
```bash
flutter test
```

## Troubleshooting

### Chrome ne se lance pas?
Consultez le [Guide de dépannage complet](TROUBLESHOOTING.md) pour toutes les solutions.

**Solution rapide:** Utilisez le mode web-server
```bash
flutter run -d web-server --web-port=8080
```
Puis ouvrez http://localhost:8080 dans votre navigateur.

### Nettoyage
```bash
flutter clean
flutter pub get
```

## Documentation supplémentaire
- [RUN_WEB.md](RUN_WEB.md) - Guide d'exécution web
- [TROUBLESHOOTING.md](TROUBLESHOOTING.md) - Guide de dépannage complet
