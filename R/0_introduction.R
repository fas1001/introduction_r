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
# données. Si vous n'avez pas les librairies déjà installées, vous pouvez
# utiliser la fonction install.packages() pour les installer.
# install.packages("tidyverse")
# install.packages("modelsummary")


# 2. Charger les données situées dans le chemin d'accès data/raw/data_raw.csv
# et créer un dataframe nommé df pour y assigner les données 
# utilisant la fonction read.csv()


# 3. Visualiser les données du dataframe dans RStudio en utilisant 
# la fonction View()

 
# 4. Générer la liste de tous les variables présentes dans notre dataframe en
# utilisant la fonction names()


# 5. Utiliser la fonction select() pour sélectionner seulement les variables
# qui nous intéressent et les assigner à un nouveau dataframe nommé df_select


# 6. Utiliser table() pour afficher les valeurs uniques de la variable
# indépendante. Vous pourrez vous servire de cette information pour déterminer 
# comment nettoyer les données


# 6.1 Créer une variable vide qui contiendra les valeurs nettoyées de 
# votre variable indépendante. 


# 6.2 Nettoyer la variable créée en 6.1 pour qu'elle contienne 0
# quand le répodant ne concorde pas à votre variable et 1 quand le répondant
# concorde. Par exemple, si votre variable indépendante est
# être riche ou non, vous pouvez créer une variable qui contient 0 pour les
# répondants qui ne sont pas riches et 1 pour les répondants qui sont riches.


# 6.3 Utiliser table() pour afficher les valeurs uniques de la nouvelle
# variable


# 6.4 Utiliser select() pour enlever la vieille variable indépendante


# 7. Utiliser table() pour afficher les valeurs uniques de la variable
# Vous pourrez vous servire de cette information pour déterminer comment
# nettoyer les données


# 7.1 Créer une variable vide qui contiendra les valeurs nettoyées de 
# votre variable dépendante. 


# 7.2 Nettoyer la variable créée en 7.1 pour qu'elle contienne 0
# quand le répodant a choisi l'option le plus bas et 1 quand le répondant a 
# choisi l'option la plus haute. Par exemple, si votre variable dépendante est
# la fréquence à laquelle les répondants pratiquent le yoga, vous pouvez créer
# une variable qui contient 0 pour les répondants qui ne pratiquent pas le yoga
# 0.25 pour les répondants qui pratiquent le yoga une fois par semaine, 0.5 pour
# les répondants qui pratiquent le yoga deux fois par semaine, 0.75 pour les
# répondants qui pratiquent le yoga trois fois par semaine et 1 pour les
# répondants qui pratiquent le yoga tous les jours. Vous pouvez déterminer
# comment nettoyer les données en utilisant la fonction table() et en réfléchissant
# à la façon dont vous voulez représenter les données.


# 7.3 Utiliser table() pour afficher les valeurs uniques de la nouvelle
# variable


# 7.4 Utiliser select() pour enlever la vieille variable dépendante


# 8. Sauvegarder les données nettoyées dans un fichier csv. Utilisez la
# fonction write.csv() pour sauvegarder les données nettoyées dans le chemin
# d'accès data/clean/data_clean.csv


# 9. Visualiser les données de façon descriptive


# 9.1 Visualiser la distribution de la variable indépendante


# 9.2 Visualiser la distribution de la variable dépendante


# 10. Un modèle de régression logistique pour étudier le lien entre votre
# variable indépendante et votre variable dépendante. Le modèle de 
# régression logistique est le mieux adapté pour les variables dépendantes
# binaires comme celle que vous avez nettoyée.


# 11. Visualiser le résumé du modèle en utilisante la fonction summary()


# 12. Créer un tableau de régression avec le package modelsummary du 
# Professeur Vincent Arel-Bundock de l'UdeM. Dans le chanp output =
# vous pouvez spécifier le chemin d'accès où vous voulez sauvegarder le
# tableau. Sauvegardez le tableau dans le chemin d'accès results/tables/table.md


# 13. Manipuler les données pour pouvoir faire un graphique intéressant.
# En utilisant les fonctions group_by() et summarize(), créer un dataframe
# qui contient la moyenne de la variable dépendante pour chaque valeur de la
# variable indépendante.


# 14. Faire un graphique pour visualiser la relation entre le revenu et la pratique
# du yoga. Vous pouvez utiliser la fonction ggplot() pour faire un graphique
# en barres. dans la fonction ggplot(), vous pouvez utiliser aes() pour définir
# les variables que vous voulez comparer. Dans votre cas, x = "votre_dépendante", 
# y = "la_variable_créée_avec_summarize", fill = factor("votre_variable_indépendante"). 
# Ensuite, utiliser geom_bar() pour faire un graphique en barres. Dans les 
# paramètres de geom_bar(), vous pouvez utiliser stat = "identity"
# et position = "dodge". 


# 15. Sauvegarder le graphique en utilisant la fonction ggsave(). Sauvegardez le dans
# le chemin d'accès results/graphs/graph.png


