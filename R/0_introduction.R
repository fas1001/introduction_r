################################################################################
#                        EXERCICE D'ANALYSE DE DONNÉES                          #
################################################################################

# OBJECTIF: Répondre à une question de recherche simple en utilisant l'analyse 
# quantitative de données.

###############################################################################
#                        VARIABLES DISPONIBLES                                  #
###############################################################################

# VARIABLES INDÉPENDANTES (facteurs explicatifs possibles):
#   - ses_religion     : Membre d'une communauté religieuse ou non
#   - ses_education    : Éducation supérieure ou non
#   - ses_ethnicity    : Minorité visible ou non
#   - lifestyle_pets   : Possession d'animaux de compagnie ou non
#   - lifestyle_coffee : Consommation de café ou non

# VARIABLES DÉPENDANTES (résultats possibles à expliquer):
#   - tactical_concern_climate          : Préoccupation pour le climat
#   - lifestyle_watch_soccer_freq       : Fréquence de visionnement du soccer
#   - lifestyle_fishing_freq            : Fréquence de pêche
#   - lifestyle_gpt_freq               : Fréquence d'utilisation de l'IA générative
#   - lifestyle_volunteeringsocial_freq : Fréquence de bénévolat social

###############################################################################
#                        QUESTION DE RECHERCHE                                  #
###############################################################################

# Écrivez votre question ci-dessous:
# «<Écrire votre question ici>»

# Exemple: Est-ce que la variable indépendante influence la variable dépendante ?

###############################################################################
#                        ÉTAPES DE L'ANALYSE                                    #
###############################################################################

# 1. IMPORTATION DES LIBRAIRIES
# ----------------------------
# Installer et charger les packages nécessaires:
# - dplyr : pour manipuler les données
# - modelsummary : pour les tableaux de régression
# - ggplot2 : pour les graphiques
# - tidyr : pour restructurer les données

# Si nécessaire, installer les packages:
# install.packages("tidyverse")
# install.packages("modelsummary")


# 2. CHARGEMENT DES DONNÉES
# ------------------------
# Charger le fichier data/raw/data_raw.csv dans un dataframe nommé 'df'


# 3. EXPLORATION INITIALE
# ----------------------
# Visualiser les données avec View()


# 4. STRUCTURE DES DONNÉES
# -----------------------
# Observer les noms des variables avec names()


# 5. SÉLECTION DES VARIABLES
# -------------------------
# Sélectionner uniquement les variables pertinentes avec select()


# 6. EXPLORATION DE LA VARIABLE INDÉPENDANTE
# ----------------------------------------
# Examiner les valeurs uniques avec table()


# 6.1 PRÉPARATION DU RECODAGE
# ---------------------------
# Créer une nouvelle variable vide pour les valeurs recodées


# 6.2 RECODAGE DE LA VARIABLE
# --------------------------
# Transformer en variable binaire (0/1)
# Exemple avec le revenu:
#   0 = non riche
#   1 = riche


# 6.3 VÉRIFICATION DU RECODAGE
# ---------------------------
# Vérifier les nouvelles valeurs avec table()


# 6.4 NETTOYAGE
# -------------
# Supprimer l'ancienne version de la variable avec select()


# 7. EXPLORATION DE LA VARIABLE DÉPENDANTE
# --------------------------------------
# Examiner les valeurs uniques avec table()


# 7.1 PRÉPARATION DU RECODAGE
# --------------------------
# Créer une nouvelle variable vide pour les valeurs recodées


# 7.2 RECODAGE DE LA VARIABLE
# --------------------------
# Transformer en échelle numérique (0 à 1)
# Exemple avec la fréquence:
#   0    = jamais
#   0.25 = rarement
#   0.5  = parfois
#   0.75 = souvent
#   1    = très souvent


# 7.3 VÉRIFICATION DU RECODAGE
# ---------------------------
# Vérifier les nouvelles valeurs avec table()


# 7.4 NETTOYAGE
# -------------
# Supprimer l'ancienne version de la variable


# 8. SAUVEGARDE DES DONNÉES NETTOYÉES
# ---------------------------------
# Sauvegarder en format CSV dans data/clean/data_clean.csv


###############################################################################
#                        ANALYSE STATISTIQUE                                    #
###############################################################################

# 9. ANALYSE DESCRIPTIVE
# --------------------

# 9.1 Distribution de la variable indépendante
# Utiliser table() et hist()


# 9.2 Distribution de la variable dépendante
# Utiliser table() et hist()


# 10. MODÉLISATION STATISTIQUE
# --------------------------
# Calculer un modèle de régression linéaire
# Variable dépendante ~ Variable indépendante


# 11. RÉSULTATS DU MODÈLE
# ----------------------
# Examiner les résultats avec summary()


# 12. TABLEAU DE RÉGRESSION
# -----------------------
# Créer un tableau formaté avec modelsummary()
# Sauvegarder dans results/tables/table.md


###############################################################################
#                        VISUALISATION                                          #
###############################################################################

# 13. PRÉPARATION DES DONNÉES
# -------------------------
# Calculer les moyennes par groupe avec group_by() et summarize()


# 14. CRÉATION DU GRAPHIQUE
# -----------------------
# Créer un graphique en barres avec ggplot()
# Utiliser:
#   - aes() pour définir x, y, et fill
#   - geom_bar() avec stat = "identity" et position = "dodge"


# 15. SAUVEGARDE DU GRAPHIQUE
# -------------------------
# Sauvegarder en PNG dans results/graphs/graph.png
