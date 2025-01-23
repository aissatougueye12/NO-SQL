SADD monset "Anglais" "Francais" "Espagnol"
# Ajoute les éléments "Anglais", "Francais", "Allemand" et "Espagnol" à l'ensemble 'monset'. 
# Les doublons sont ignorés car il s'agit d'un ensemble et pas une liste
# Retourne (integer) 3

SMEMBERS monset
# Retourne tous les éléments de l'ensemble 'monset'.
# 1) "Anglais"
# 2) "Espagnol"
# 3) "Francais"
# 4) "Allemand"

SISMEMBER monset "Anglais"
# Vérifie si "Anglais" est membre de l'ensemble 'monset'. 
# Retourne 1 dans ce cas, 0 si "Anglais ne faisait pas partie de l'ensemble".

SREM monset "Allemand"
# Supprime l'élément "Allemand" de l'ensemble 'monset'

SCARD monset
# Retourne le nombre total d'éléments dans l'ensemble 'monset' (3).

SADD monsetpays "Angleterre" "France" "Espagne"
# Ajoute les éléments "Angleterre", "France", et "Espagne" à l'ensemble 'monset'

SUNION monset monsetpays
# Fusionne les deux ensembles 'monset' et 'monsetpays'
# Retourne:
# 1) "Anglais"
# 2) "Espagnol"
# 3) "Francais"
# 4) "Angleterre"
# 5) "France"
# 6) "Espagne"
