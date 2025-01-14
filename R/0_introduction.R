# Écrire la question à laquelle vous voulez répondre
# Votre question doi être simple et comporter une variable dépendante ainsi 
# qu'une variable indépendante.

# Voici une liste de variable dépendante et indépendante que vous pouvez utiliser

# Variable dépendante:

# Variables indépendantes (facteurs explicatifs possibles) :

    # ses_religion (Membre d'une communauté religieuse ou non)
    # ses_education (Éducation supérieure ou non)
    # ses_ethnicity (Minorité visible ou non)
    # lifestyle_pets (Possession d’animaux de compagnie ou non)
    # lifestyle_coffee (Consommation de café ou non)

# Variables dépendantes (résultats possibles à expliquer) :

    # tactical_concern_climate (Préoccupation pour le climat)
    # lifestyle_watch_soccer_freq (Fréquence de visionnement du soccer)
    # lifestyle_fishing_freq (Fréquence de pêche)
    # lifestyle_gpt_freq (Fréquence d'utilisation de l'IA générative)
    # lifestyle_volunteeringsocial_freq (Fréquence de bénévolat social)

# «<Écrire votre question ici>»

# Ex: Est-ce que la variable indépendante influence la variable dépendante ?
# ---------------------------------------------------------------------------

# 1. Importer les librairie dplyr qui contient les fonctions nécessaires pour
# manipuler les données dont select(). Importer aussi la librairie modelsummary
# qui contient les fonctions nécessaires pour faire un tableau de régression,
# ggplot2 pour faire des graphiques et la librairie tidyr pour manipuler les
# données.


# 2. Charger les données situées dans le chemin d'accès data/raw/data_raw.csv
# et créer un dataframe nommé df pour y assigner les données 
# utilisant la fonction read.csv()


# 3. Visualiser les données du dataframe en utilisant la fonction View()


# 4. Générer la liste de tous les variables présentes dans notre dataframe en
# utilisant la fonction names()


# 5. Utiliser la fonction select() pour sélectionner seulement les variables
# qui nous intéressent et les assigner à un nouveau dataframe nommé df_yoga


# 6. Créer une variable dans lequel contient les valeurs
# riche, moyen et pauvre en utilisant la variable de revenu


# 6.1 Utiliser table() pour afficher les valeurs uniques de la variable


# 6.2 Créer une nouvelle variable dans le dataframe df_yoga qui contient 0
# quand le répodant n'est pas riche et 1 quand le répondant est riche


# 6.3 Utiliser table() pour afficher les valeurs uniques de la nouvelle
# variable


# 6.4 Utiliser select() pour enlever la vieille variable de revenu


# 7 Créer une variable numérique pour la fréquence de df_yoga


# 7.1 Utiliser table() pour afficher les valeurs uniques de la variable de yoga


# 7.2 Créer une nouvelle variable dans le dataframe df_yoga qui contient des
# valeurs entre 0 et 1 correspondant à la fréquence de pratique du yoga.
# 0 est moins de yoga et 1 est plus de yoga.


# 7.3 Utiliser table() pour afficher les valeurs uniques de la nouvelle
# variable


# 7.4 Utiliser select() pour enlever la vieille variable de fréquence de yoga


# 8. Sauvegarder les données nettoyées dans un fichier csv. Utilisez la
# fonction write.csv() pour sauvegarder les données nettoyées dans le chemin
# d'accès data/clean/data_clean.csv


# 9. Visualiser les données de façon descriptive


# 9.1 Visualiser la distribution de la variable lifestyle_yoga_freq


# 9.2 Visualiser la distribution de la variable ses_riche


# 10. faire une régression logistique pour prédire si une personne est riche ou non


# 11. Visualiser le résumé du modèle


# 12. Créer un tableau de régression avec le package
# modelsummary de Vincent Arel-Bundock


# 13. Manipuler les données pour pouvoir faire un graphique intéressant.


# 14. Faire un graphique pour visualiser la relation entre le revenu et la pratique
# du yoga


# 15. Sauvegarder le graphique


