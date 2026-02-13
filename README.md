# Homebrew Tap — Roon Controller

Tap Homebrew pour installer [Roon Controller](https://github.com/renesenses/roon-controller), un player macOS natif (SwiftUI) pour les systemes audio Roon, avec deux modes d'interface : **Player** (vue compacte) et **Roon** (layout complet avec sidebar, playlists et barre de transport).

## Installation

```bash
brew tap renesenses/roon-controller
brew install --cask roon-controller
```

## Mise a jour

```bash
brew update
brew upgrade --cask roon-controller
```

## Desinstallation

```bash
brew uninstall --cask roon-controller
```

Pour supprimer egalement les preferences :

```bash
brew uninstall --cask --zap roon-controller
```

## Premier lancement

L'app n'est pas signee avec un Apple Developer ID :

1. Clic droit sur l'app > **Ouvrir** pour contourner Gatekeeper
2. Dans Roon, aller dans **Parametres > Extensions** et autoriser **Roon Controller macOS**

## Pre-requis

- macOS 15.0 (Sequoia) ou plus recent
- Un Roon Core accessible sur le reseau local

---

# Homebrew Tap — Roon Controller (English)

Homebrew tap to install [Roon Controller](https://github.com/renesenses/roon-controller), a native macOS player (SwiftUI) for Roon audio systems, with two UI modes: **Player** (compact view) and **Roon** (full layout with sidebar, playlists and transport bar).

## Install

```bash
brew tap renesenses/roon-controller
brew install --cask roon-controller
```

## Update

```bash
brew update
brew upgrade --cask roon-controller
```

## Uninstall

```bash
brew uninstall --cask roon-controller
```

To also remove preferences:

```bash
brew uninstall --cask --zap roon-controller
```

## First launch

The app is not signed with an Apple Developer ID:

1. Right-click the app > **Open** to bypass Gatekeeper
2. In Roon, go to **Settings > Extensions** and authorize **Roon Controller macOS**

## Requirements

- macOS 15.0 (Sequoia) or later
- A Roon Core reachable on the local network
