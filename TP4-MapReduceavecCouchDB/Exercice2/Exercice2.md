# Manipulation des bases de données
## Création d’une base de données

Pour créer une base de données appelée films :

                curl -X PUT http :// abc :123 @localhost :5984/ films


## Insertion de documents

### Insertion d’un document simple

                curl -X PUT http://abc:123@localhost:5984/films/doc1 -d ’{"titre ":"Inception", "annee":2010}’

### Insertion en masse

Pour insérer plusieurs documents :

                curl -X POST http://abc:123@localhost:5984/films/_bulk_docs -d @films_couchdb.json -H "Content -Type: application/json"

### Exemple de fichier JSON :

                {
                "docs": [
                {"_id": "movie:1001", "titre": "Inception", "annee": 2010}, {"_id": "movie:1002", "titre": "Interstellar", "annee": 2014}
                ] }


# Récupération d’un document
Pour récuperer un document avec un identifiant donné:

                curl -X GET http://abc:123@localhost:5984/films/movie:1001 Listing 


# MapReduce avec CouchDB

MapReduce est un modèle de programmation conçu pour traiter de grandes quantités de données en parallèle sur un cluster de machines. Il se compose de deux étapes principales :

• Map : chaque entrée de données est traitée indépendamment, et une paire clé- valeur est produite.

• Reduce :les paires clé-valeur sont agrégées par clé pour produire un résultat final. Cela permet de répartir le travail de manière efficace et de traiter de grands volumes de
données.

## Nombre de films par année

### Fonction Map

La fonction Map émet l’année comme clé et le titre comme valeur :

                function (doc) 
                { emit(doc.annee , doc.titre);
                }

#### Résultat: 

{"key":2010, "value":"Inception"} 
{"key":2014, "value":"Interstellar}


### Fonction Reduce

La fonction Reduce compte le nombre de titres par année :

                function (keys, values) 
                { return values.length;
                }

#### Résultat

{"key":2010, "value":1} {"key":2014, "value":1}



## Nombre de films par acteur

### Fonction Map

Si l’on souhaite compter le nombre de films pour chaque acteur :

                function (doc) {
                for (i = 0; i < doc.actors.length; i++) {
                emit({"pr nom": doc.actors[i].rst_name, "nom": doc.actors[i].
                last_name}, doc.title); }
                }

### Fonction Reduce

Pour compter le nombre de films par acteur :


                function (keys, values) { return values.length;
                }