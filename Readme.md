# SGBD distribuées (no sql)

Ce projet contient un script pour effectuer toutes les manipulations de base avec Redis, couvrant les types de données les plus couramment utilisés (chaînes, listes, ensembles, ensembles triés, hachages, etc.).

## Prérequis

Avant de commencer, assurez-vous que les éléments suivants sont installés :

- Redis : [Installation officielle](https://redis.io/docs/getting-started/)
- Redis CLI : Interface en ligne de commande pour exécuter Redis.

## Fonctionnalités

Voici les manipulations couvertes par les script que je mets à jour au fil des TPs :

### TP1: REDIS

1. **Manipulation des clés** :
   - Création, récupération, suppression de clés.
   - Définir une expiration et vérifier l'existence d'une clé.
   - Opérations arithmétiques (incrémentation et décrémentation).

2. **Listes** :
   - Ajouter des éléments en tête ou en queue.
   - Supprimer et lire des éléments.

3. **Ensembles (Sets)** :
   - Ajouter et supprimer des membres.
   - Vérifier l'appartenance et la taille.

5. **Ensembles ordonnés (Sorted Sets)** :
   - Ajouter des éléments avec des scores.
   - Récupérer des éléments classés.

6. **Hachages (Hashes)** :
   - Gérer des champs et leurs valeurs.
   - Supprimer et vérifier des champs.

### TP2 & TP3: Malade(Justificatifs secretariat)

### TP4: MapReduce avec CouchDB

1. **Exercice 1** 
2. **Exercice 1** 

## Utilisation

### TP1
1. Lancez le serveur Redis :
   ```bash
   redis-server
2. Lancer le client Redis CLI
   ```bash
   redis-cli
