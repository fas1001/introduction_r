# 9. Charger les librairies nécessaires pour manipuler les données
library(dplyr)
library(modelsummary)

# 10. Charger les données nettoyées
df <- read.csv("data/processed/1_ex_data_cleaned.csv")

# 11. Visualiser les données de façon descriptive

# 11.1 Visualiser la distribution de la variable lifestyle_yoga_freq
table(df$lifestyle_yoga)
hist(df$lifestyle_yoga)

# 11.2 Visualiser la distribution de la variable ses_riche
table(df$ses_riche)
hist(df$ses_riche)

# 12. faire une régression logistique pour prédire si une personne est riche ou non
model <- glm(ses_riche ~ lifestyle_yoga, data = df, family = "binomial")

# 13. Visualiser le résumé du modèle
summary(model)

# 14. Créer un tableau de régression avec le package
# modelsummary de Vincent Arel-Bundock
modelsummary(model,
  output = "results/tables/1_ex_regression.md",
  stars = TRUE,
  title = "Relation entre être riche et faire du yoga"
)
