ZADD monsetord 1 "Anglais" 2 "Francais" 3 "Espagnol"
# Ajoute les éléments "Anglais", "Francais" et "Espagnol" à l'ensemble trié `monsetord` avec leurs scores respectifs
# Les doublons sont ignorés car il s'agit d'un ensemble et pas une liste
# Retourne (integer) 3

ZRANGE monsetord 0 -1
# Retourne tous les éléments de l'ensemble trié `monsetord` par ordre croissant de scores.
# 1) "Anglais"
# 2) "Francais"
# 3) "Espagnol"

ZREM monsetord "Francais"
# Supprime l'élément "Francais" de l'ensemble trié.

ZSCORE monsetord "Anglais"
# Retourne le score associé à l'élément "Anglais" dans l'ensemble trié.
# Retourne 1

ZRANK monsetord "Espagnol"
# Retourne le rang de l'élément "Espagnol" (0 pour le plus petit score).
# Retourne 2