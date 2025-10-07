# Flutter Web - Guide d'exécution

## Problème rencontré
Chrome ne se lance pas correctement avec `flutter run -d chrome` sur Windows.

## Solutions

### Solution 1: Mode Web Server (Recommandé)
Cette méthode lance un serveur web local que vous pouvez ouvrir dans n'importe quel navigateur.

```bash
flutter run -d web-server --web-port=8080
```

Ensuite, ouvrez votre navigateur et allez à: `http://localhost:8080`

### Solution 2: Utiliser Edge
Si Edge fonctionne mieux sur votre système:

```bash
flutter run -d edge
```

### Solution 3: Utiliser Windows Desktop
Pour tester rapidement sans navigateur:

```bash
flutter run -d windows
```

### Solution 4: Build et servir manuellement
Pour une version de production:

```bash
flutter build web
cd build/web
python -m http.server 8080
```

Puis ouvrez: `http://localhost:8080`

## Vérification de la configuration

```bash
flutter doctor -v
flutter devices
```

## Nettoyage en cas de problème

```bash
flutter clean
flutter pub get
```

## Notes
- Le mode web-server est le plus fiable sur Windows
- Chrome peut avoir des problèmes avec les profils utilisateur temporaires
- Edge est souvent plus stable pour le développement Flutter web sur Windows
