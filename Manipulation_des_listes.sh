LPUSH maliste "Aicha" "Yacine" "Amine"
# Ajoute les éléments "Amine", "Yacine" et "Aicha"  au début (tête) de la liste 'maliste'. 
# Notons bien que l'ordre est inversé
# Retoune (integer) 3

RPUSH maliste "Leonard" "Costa"
# Ajoute les éléments "Leonard" et "Costa" à la fin (queue) de la liste 'maliste'
# Retoune (integer) 5

LRANGE maliste 0 -1
# Les indices commencent à 0 et -1 représente le dernier élément.
# Retourne tous les éléments de la liste 'maliste'
# 1) "Amine"
# 2) "Yacine"
# 3) "Aicha"
# 4) "Leonard"
# 5) "Costa"

LPOP maliste
# Supprime et retourne l'élément le plus à gauche de la liste 'maliste'.
# Retourne "Amine"

RPOP maliste
# Supprime et retourne l'élément le plus à droite de la liste 'maliste'.
# Retourne "Costa"

LLEN maliste
# Retourne la longueur de la liste (nombre d'éléments).
# Retoune (integer) 3

LRANGE maliste 0 -1
# Retourne tous les éléments restants de la liste 'maliste'
# 1) "Yacine"
# 2) "Aicha"
# 3) "Leonard"


