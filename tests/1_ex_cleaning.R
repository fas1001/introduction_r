# Nous voulons répondre à la question:
# « Est-ce que les riches font plus de yoga que les non-riche ?

# 1. Importer la librairie dplyr qui contient les fonctions nécessaires pour
# manipuler les données dont select()
library(dplyr)

# 2. Charger les données situées dans le chemin d'accès data/raw/data_raw.csv
# et Créez un dataframe nommé df et assignez les données à ce dataframe en
# utilisant la fonction read.csv()
df <- read.csv("data/raw/data_raw.csv")

# 3. Visualiser les données du dataframe en utilisant la fonction View()
View(df)

# 4. Générer la liste de tous les variables présentes dans notre dataframe en
# utilisant la fonction names()
names(df)

# 5. Utiliser la fonction select() pour sélectionner seulement les variables
# qui nous intéressent et les assigner à un nouveau dataframe nommé df_yoga
df_yoga <- df %>%
  select(ses_income, lifestyle_yoga_freq)

# 6. Créer une variable dans lequel contient les valeurs
# riche, moyen et pauvre en utilisant la variable de revenu
df_yoga$ses_riche <- NA

# 6.1 Utiliser table() pour afficher les valeurs uniques de la variable
table(df$ses_income)

# 6.2 Créer une nouvelle variable dans le dataframe df_yoga qui contient 0
# quand le répodant n'est pas riche et 1 quand le répondant est riche
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

# 6.3 Utiliser table() pour afficher les valeurs uniques de la nouvelle
# variable
table(df_yoga$ses_riche)

# 6.4 Utiliser select() pour enlever la vieille variable de revenu
df_yoga <- df_yoga %>%
  select(-ses_income)

# 7 Créer une variable numérique pour la fréquence de df_yoga
df_yoga$lifestyle_yoga <- NA

# 7.1 Utiliser table() pour afficher les valeurs uniques de la variable de yoga
table(df_yoga$lifestyle_yoga_freq)

# 7.2 Créer une nouvelle variable dans le dataframe df_yoga qui contient des
# valeurs entre 0 et 1 correspondant à la fréquence de pratique du yoga.
# 0 est moins de yoga et 1 est plus de yoga.
df_yoga$lifestyle_yoga[df_yoga$lifestyle_yoga_freq == "Never"] <- 0
df_yoga$lifestyle_yoga[df_yoga$lifestyle_yoga_freq == "Almost never"] <- 0.25
df_yoga$lifestyle_yoga[df_yoga$lifestyle_yoga_freq == "Sometimes"] <- 0.5
df_yoga$lifestyle_yoga[df_yoga$lifestyle_yoga_freq == "Often"] <- 0.75
df_yoga$lifestyle_yoga[df_yoga$lifestyle_yoga_freq == "Very Often"] <- 1

# 7.3 Utiliser table() pour afficher les valeurs uniques de la nouvelle
# variable
table(df_yoga$lifestyle_yoga)

# 7.4 Utiliser select() pour enlever la vieille variable de fréquence de yoga
df_yoga <- df_yoga %>%
  select(-lifestyle_yoga_freq)

# 8. Sauvegarder les données nettoyées dans un fichier csv. Utilisez la
# fonction write.csv() pour sauvegarder les données nettoyées dans le chemin
# d'accès data/clean/data_clean.csv
write.csv(df_yoga, "data/processed/1_ex_data_cleaned.csv", row.names = FALSE)
