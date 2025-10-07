# Guide de dépannage Flutter Web

## Problème: Chrome ne se lance pas

### Symptômes
```
Failed to launch browser after 3 tries. Command used to launch it: C:\Program Files\Google\Chrome\Application\chrome.exe
```

### Causes possibles
1. **Conflit de profil Chrome**: Chrome utilise un profil temporaire qui peut être verrouillé
2. **Port occupé**: Le port de débogage peut être utilisé par une autre instance
3. **Permissions**: Problèmes de permissions sur le dossier temporaire
4. **Version Chrome**: Chrome peut être trop récent ou avoir des mises à jour en attente

## Solutions

### Solution 1: Mode Web Server (RECOMMANDÉ) ⭐

C'est la méthode la plus fiable sur Windows.

```bash
flutter run -d web-server --web-port=8080
```

**Avantages:**
- Pas de problème de lancement de navigateur
- Fonctionne avec n'importe quel navigateur
- Meilleure stabilité
- Permet le hot reload

**Utilisation:**
1. Lancez la commande ci-dessus
2. Attendez que le serveur démarre
3. Ouvrez manuellement votre navigateur à: `http://localhost:8080`

### Solution 2: Utiliser Edge

Edge est souvent plus stable que Chrome pour Flutter sur Windows.

```bash
flutter run -d edge
```

### Solution 3: Windows Desktop

Pour tester sans navigateur:

```bash
flutter run -d windows
```

**Note:** L'application s'ouvrira comme une application Windows native.

### Solution 4: Nettoyer et réessayer

```bash
# Nettoyer le projet
flutter clean

# Réinstaller les dépendances
flutter pub get

# Supprimer les processus Chrome en cours
taskkill /F /IM chrome.exe /T

# Réessayer
flutter run -d chrome
```

### Solution 5: Spécifier un port différent

```bash
flutter run -d chrome --web-port=8081
```

### Solution 6: Désactiver le hot reload

```bash
flutter run -d chrome --no-hot
```

### Solution 7: Build et servir manuellement

Pour une version de production:

```bash
# Build l'application
flutter build web

# Aller dans le dossier de build
cd build\web

# Servir avec Python (si installé)
python -m http.server 8080

# OU avec Node.js (si installé)
npx http-server -p 8080

# OU avec PHP (si installé)
php -S localhost:8080
```

Puis ouvrez: `http://localhost:8080`

## Scripts d'aide

### PowerShell
```powershell
.\run_web.ps1 server    # Mode serveur web
.\run_web.ps1 edge      # Utiliser Edge
.\run_web.ps1 windows   # Application Windows
.\run_web.ps1 chrome    # Utiliser Chrome
```

### Batch
```batch
run_web.bat server      # Mode serveur web
run_web.bat edge        # Utiliser Edge
run_web.bat windows     # Application Windows
run_web.bat chrome      # Utiliser Chrome
```

## Vérification de l'environnement

### Vérifier Flutter
```bash
flutter doctor -v
```

### Vérifier les devices disponibles
```bash
flutter devices
```

### Vérifier les processus Chrome
```bash
tasklist | findstr chrome
```

### Tuer tous les processus Chrome
```bash
taskkill /F /IM chrome.exe /T
```

## Problèmes courants

### Port déjà utilisé
**Erreur:** `Port 8080 is already in use`

**Solution:**
```bash
# Utiliser un port différent
flutter run -d web-server --web-port=8081

# OU trouver et tuer le processus utilisant le port
netstat -ano | findstr :8080
taskkill /PID <PID> /F
```

### Erreur de compilation
**Erreur:** `Error: Cannot run with sound null safety`

**Solution:**
```bash
# Mettre à jour les dépendances
flutter pub upgrade

# OU migrer vers null safety
flutter pub upgrade --null-safety
```

### Hot reload ne fonctionne pas
**Solution:**
1. Sauvegarder le fichier (Ctrl+S)
2. Dans le terminal, taper `r` pour reload manuel
3. Ou `R` pour hot restart complet

### Application ne s'affiche pas
**Solution:**
1. Vérifier la console du navigateur (F12)
2. Vérifier les erreurs dans le terminal Flutter
3. Essayer un hard refresh (Ctrl+Shift+R)

## Recommandations

### Pour le développement quotidien
- **Utilisez le mode web-server** pour éviter les problèmes de lancement
- Gardez un onglet de navigateur ouvert sur `localhost:8080`
- Utilisez le hot reload pour les changements rapides

### Pour les tests
- **Utilisez Windows desktop** pour des tests rapides sans navigateur
- Testez sur plusieurs navigateurs avant le déploiement

### Pour la production
- Utilisez `flutter build web --release` pour optimiser
- Testez le build de production localement avant le déploiement

## Ressources

- [Flutter Web Documentation](https://flutter.dev/web)
- [Flutter GitHub Issues](https://github.com/flutter/flutter/issues)
- [Stack Overflow - Flutter](https://stackoverflow.com/questions/tagged/flutter)

## Support

Si les problèmes persistent:
1. Vérifiez `flutter doctor -v` pour les problèmes de configuration
2. Mettez à jour Flutter: `flutter upgrade`
3. Consultez les issues GitHub de Flutter
4. Demandez de l'aide sur Stack Overflow ou Discord Flutter
