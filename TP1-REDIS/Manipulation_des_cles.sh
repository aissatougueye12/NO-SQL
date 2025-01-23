SET macle "macle"
# Définit une clé nommée 'macle' avec la valeur "macle"
# Retourne OK si tout se passe bien

GET macle
# Récupère la valeur associée à la clé 'macle'
# Retourne "macle"

INCR macle
# Incrémente la valeur de la clé 'macle' (doit être un entier) de 1.
#Si la clé n'existe pas, elle est initialisée à 0 avant l'incrément.

INCRBY macle 5
# Incrémente la valeur de 'macle' de 5

DECR macle
# Décrémente la valeur de la clé 'macle' de 1

DECRBY macle 3
# Décrémente la valeur de 'macle' de 3

EXPIRE macle 120
# Définit un délai d'expiration de 120 secondes pour la clé 'macle'

TTL macle
# Retourne le temps restant en secondes (114 pour moi) avant l'expiration de la clé 'macle'.
# Aurait retourné -1 si la clé n'expire pas

DEL macle
# Supprime la clé 'macle' et sa valeur
#Retourne (integer) 1 