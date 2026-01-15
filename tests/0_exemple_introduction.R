# Ce script répond à la question suivante:
# « Est-ce que être riche a un effet sur la fréquence de pratique du Yoga ? »

# Note: Cette analyse démontre les étapes essentielles d'une analyse de données:
# - Importation et préparation des données
# - Nettoyage et recodage des variables
# - Analyse statistique
# - Visualisation des résultats

# 1. Importer les librairies nécessaires
# Note: Ces packages constituent la base de l'analyse moderne de données en R
# >> library() charge les packages suivants:
#    - dplyr    : manipulation efficace des données
#    - tidyr    : restructuration des données
#    - ggplot2  : création de graphiques professionnels
library(dplyr)
library(tidyr)
library(ggplot2)

# 2. Charger les données
# >> read.csv() avec les paramètres par défaut :
df <- read.csv("data/raw/data_raw.csv")

# 3. Visualiser les données
# Note: View() ouvre une interface similaire à Excel pour explorer les données
View(df)

# 4. Explorer la structure des données
# >> names() retourne un vecteur contenant tous les noms de colonnes du dataframe
names(df)

# 5. Sélectionner les variables pertinentes
# Note: Cette étape permet de se concentrer uniquement sur les variables d'intérêt
# >> select() choisit les colonnes spécifiées :
#    - ses_income : variable de revenu
#    - lifestyle_yoga_freq : fréquence de pratique du yoga
df_yoga <- df %>%
  select(ses_income, lifestyle_yoga_freq)

# 6. Préparer la variable de revenu
# >> NA crée une colonne vide de type logique
#    Cette approche permet d'éviter les erreurs de type de données
df_yoga$ses_riche <- NA

# 6.1 Explorer les catégories de revenu
# >> table() fournit un tableau de fréquences qui permet de :
#    - voir toutes les catégories existantes
#    - vérifier s'il y a des valeurs manquantes
#    - comprendre la distribution des revenus
table(df$ses_income)

# 6.2 Recoder le revenu en variable binaire
# Note: Nous définissons "riche" comme ayant un revenu ≥ $100,000
# >> Cette transformation se fait en plusieurs étapes :
#    - == compare exactement les chaînes de caractères
#    - <- assigne la valeur 0 (non-riche) ou 1 (riche)
#    - Les crochets [] sélectionnent les observations spécifiques
df_yoga$ses_riche[df_yoga$ses_income == "$0-9,999"] <- 0
df_yoga$ses_riche[df_yoga$ses_income == "$10,000-14,999"] <- 0
df_yoga$ses_riche[df_yoga$ses_income == "$15,000-24,999"] <- 0
df_yoga$ses_riche[df_yoga$ses_income == "$25,000-34,999"] <- 0
df_yoga$ses_riche[df_yoga$ses_income == "$35,000-49,999"] <- 0
df_yoga$ses_riche[df_yoga$ses_income == "$50,000-74,999"] <- 0
df_yoga$ses_riche[df_yoga$ses_income == "$75,000-99,999"] <- 0
df_yoga$ses_riche[df_yoga$ses_income == "$100,000-149,999"] <- 1
df_yoga$ses_riche[df_yoga$ses_income == "$150,000-199,999"] <- 1
df_yoga$ses_riche[df_yoga$ses_income == "$200,000+"] <- 1

# 6.3 Vérifier le recodage
# Note: Cette vérification est cruciale pour s'assurer que :
# - Toutes les observations ont été recodées
# - La proportion riche/non-riche est raisonnable
table(df_yoga$ses_riche)

# 6.4 Nettoyer le dataframe
# >> select(-ses_income) supprime la colonne originale car :
#    - nous n'en avons plus besoin
#    - cela évite la confusion avec plusieurs versions
df_yoga <- df_yoga %>%
  select(-ses_income)

# 7. Préparer la variable de fréquence de yoga
# >> Même approche que pour le revenu : création d'une colonne vide
df_yoga$lifestyle_yoga <- NA

# 7.1 Explorer les catégories de fréquence
# >> table() montre la distribution des réponses originales
table(df_yoga$lifestyle_yoga_freq)

# 7.2 Recoder la fréquence en échelle numérique
# Note: Création d'une échelle de 0 à 1 où :
# - 0 = jamais (aucune pratique)
# - 0.25 = presque jamais (pratique très occasionnelle)
# - 0.5 = parfois (pratique modérée)
# - 0.75 = souvent (pratique régulière)
# - 1 = très souvent (pratique intense)
# Cette échelle permet une interprétation intuitive
df_yoga$lifestyle_yoga[df_yoga$lifestyle_yoga_freq == "Never"] <- 0
df_yoga$lifestyle_yoga[df_yoga$lifestyle_yoga_freq == "Almost never"] <- 0.25
df_yoga$lifestyle_yoga[df_yoga$lifestyle_yoga_freq == "Sometimes"] <- 0.5
df_yoga$lifestyle_yoga[df_yoga$lifestyle_yoga_freq == "Often"] <- 0.75
df_yoga$lifestyle_yoga[df_yoga$lifestyle_yoga_freq == "Very Often"] <- 1

# 7.3 Vérifier le recodage
# >> table() confirme que toutes les valeurs sont dans l'intervalle [0,1]
table(df_yoga$lifestyle_yoga)

# 7.4 Nettoyer le dataframe
# Note: On enlève la variable catégorielle originale
df_yoga <- df_yoga %>%
  select(-lifestyle_yoga_freq)

# 8. Sauvegarder les données nettoyées
# >> write.csv() avec les paramètres :
#    - row.names = FALSE : évite une colonne de numéros de lignes
#    - le fichier sera créé dans data/processed/
write.csv(df_yoga, "data/processed/1_ex_data_cleaned.csv", row.names = FALSE)

# 9. Analyse descriptive préliminaire
# Note: Cette étape permet de comprendre la distribution des variables
# avant l'analyse statistique plus poussée

# 9.1 Distribution de la pratique du yoga
# >> table() donne les fréquences exactes
# >> hist() crée un histogramme montrant la forme de la distribution
table(df_yoga$lifestyle_yoga)
hist(df_yoga$lifestyle_yoga)

# 9.2 Distribution du statut économique
# Note: Permet de voir la proportion de riches dans l'échantillon
table(df_yoga$ses_riche)
hist(df_yoga$ses_riche)

# 10. Créer le modèle statistique
# Note: La régression linéaire simple est appropriée car :
# - La variable dépendante (lifestyle_yoga) est continue [0,1]
# - Nous voulons mesurer l'effet du revenu sur la pratique du yoga
# - Nous supposons une relation linéaire entre les variables

# >> lm() (Linear Model) est configuré avec :
#    - lifestyle_yoga ~ ses_riche : formule de régression où
#      * lifestyle_yoga est la variable dépendante (Y)
#      * ses_riche est la variable indépendante (X)
#      * ~ sépare Y de X dans la formule
#    - data = df_yoga : spécifie le dataframe contenant nos variables
#    - Par défaut, lm() :
#      * Estime les coefficients par la méthode des moindres carrés
#      * Calcule l'ordonnée à l'origine (intercept) et la pente
#      * Suppose une distribution normale des résidus
model <- lm(lifestyle_yoga ~ ses_riche, data = df_yoga)

# 11. Examiner les résultats
# >> summary() fournit les statistiques détaillées :
#    - coefficients et leur signification
#    - erreurs standards
#    - mesures de qualité du modèle
summary(model)

# 12. Créer un tableau de régression formaté
# >> modelsummary() avec les paramètres :
#    - output : chemin du fichier de sortie
#    - stars = TRUE : ajoute les étoiles de significativité (* p<0.05, ** p<0.01, etc.)
#    - title : ajoute un titre descriptif
modelsummary(model,
  output = "results/tables/1_ex_regression.md",
  stars = TRUE,
  title = "Relation entre être riche et faire du yoga"
)

# 13. Préparer les données pour la visualisation
# Note: Transformation des données pour le graphique
# >> Cette série d'opérations :
#    - group_by() : groupe par les deux variables d'intérêt
#    - summarise() : calcule le pourcentage pour chaque groupe
#    - drop_na() : élimine les valeurs manquantes
df_tidy <- df_yoga %>%
  group_by(lifestyle_yoga, ses_riche) %>%
  summarise(percentage = n() / nrow(df) * 100) %>%
  drop_na()

# 14. Créer le graphique
# Note: Création d'un graphique en barres comparant yoga et revenu
# Les paramètres sont choisis pour une visualisation claire :
# - aes() définit la structure visuelle du graphique
# - geom_bar() avec position = "dodge" place les barres côte à côte
# - labs() ajoute des titres informatifs
ggplot(df_tidy, aes(x = ses_riche, y = percentage, fill = factor(lifestyle_yoga))) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(
    title = "Relation entre le revenu et la pratique du yoga",
    x = "Pratique du yoga",
    y = "Pourcentage de la population"
  )

# 15. Sauvegarder le graphique
# >> ggsave() avec les paramètres optimaux :
#    - width = 10, height = 6 : dimensions en pouces (ratio 16:10)
#    - dpi = 300 : résolution standard pour publication
#      * Assez haute pour l'impression
#      * Bonne visualisation sur écran
#      * Taille de fichier raisonnable
ggsave("results/graphs/1_ex_bar_graph_riche_yoga.png", width = 10, height = 6, dpi = 300)
