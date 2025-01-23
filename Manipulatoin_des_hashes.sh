HSET monhachage elem1 "valeur1" elem2 "valeur2"
# Définit deux champs  elem1` et `elem2` avec leurs valeurs respectives.
# Retourne (integer) 2

HGET monhachage elem1
# Récupère la valeur associée au champ  elem1`.
# Retourne "valeur1"

HGETALL monhachage
# Retourne tous les champs et valeurs du hachage  monhachage`.
# 1) "elem1"
# 2) "valeur1"
# 3) "elem2"
# 4) "valeur2"

HDEL monhachage elem1
# Supprime le champ  elem1` du hachage  monhachage`.
# Retourne (integer) 1

HLEN monhachage
# Retourne le nombre total de champs dans le hachage.
# Retourne (integer) 1

HEXISTS monhachage elem2
# Vérifie si le champ `elem2` existe dans le hachage. 
# Retourne 1 si vrai, 0 si c'était elem1 à la place.
