# EXERCICE 1

## 1 Modèle de données

La matrice M que nous voulons traiter représente les liens entre N pages web. Chaque élément Mij de la matrice représente le lien entre la page Pi et la page Pj, et chaque lien a un poids représentant son importance.
Chaque ligne de la matrice peut être vue comme un vecteur représentant une page Pi, où chaque composant du vecteur Mij est un poids de lien entre la page Pi et Pj. Pour stocker cela dans CouchDB, chaque document pourrait être structuré comme suit :


                {
                "_id": "page_1",
                "links": {
                    "page_1": 0.1,
                    "page_2": 0.3,
                    "page_3": 0.5
                    } 
                }


## 2 Calcul de la norme d’un vecteur

Dans le cas de notre matrice, chaque ligne de la matrice M représente un vecteur. Pour calculer la norme de chaque vecteur dans la collection de documents C, nous utiliserons un traitement MapReduce. L’étape Map consistera à extraire les valeurs des liens (les éléments de chaque ligne de la matrice), et l’étape Reduce agrégra la somme des carrés de ces valeurs.

### Étape Map

La fonction Map extraira les valeurs des liens pour chaque ligne.


                function map(doc) {
                    var sum = 0;
                    for (var page in doc.links) {
                    sum += Math.pow(doc.links[page], 2);
                }
                    emit(doc._id, sum);
                }


### Étape Reduce

La fonction Reduce additionnera les valeurs émises par chaque ligne et renverra la norme.


                function reduce(keys, values, rereduce) {
                var total = 0;
                for (var i = 0; i < values.length; i++) {
                    total += values[i];
                }
                return Math.sqrt(total);
                }


## 3 Calcul du produit de la matrice M avec un vecteur W

Dans ce cas, le vecteur W est stocké en mémoire RAM et est accessible à toutes les fonctions Map et Reduce. Le traitement MapReduce pour ce calcul consistera à multiplier chaque élément de la matrice M par le poids correspondant dans W.

### Étape Map

La fonction Map multiplie chaque poids de la matrice par l’élément correspondant du vecteur W.


                function map(doc) {
                var vectorW ;
                    var result = 0;
                    for (var page in doc.links) {
                    var index = parseInt(page.split(’_’)[1]);
                    result += doc.links[page] * vectorW[index - 1];
                    }
                    emit(doc._id, result);
                }

### Étape Reduce

La fonction Reduce agrègera les résultats de chaque ligne.

                function reduce(keys, values, rereduce) {
                var total = 0;
                for (var i = 0; i < values.length; i++) {
                    total += values[i];
                }
                return total;
                }