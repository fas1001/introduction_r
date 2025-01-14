# 15. Charger les librairies nécessaires pour manipuler les données
library(dplyr)
library(tidyr)
library(ggplot2)

# 16. Charger les données nettoyées
df <- read.csv("data/processed/1_ex_data_cleaned.csv")

# 17. Manipuler les données pour pouvoir faire un graphique intéressant.
df_yoga <- df %>%
  group_by(lifestyle_yoga, ses_riche) %>%
  summarise(percentage = n() / nrow(df) * 100) %>%
  drop_na()

# 18. Faire un graphique pour visualiser la relation entre le revenu et la pratique
# du yoga
ggplot(df_yoga, aes(x = ses_riche, y = percentage, fill = factor(lifestyle_yoga))) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(
    title = "Relation entre le revenu et la pratique du yoga",
    x = "Pratique du yoga",
    y = "Pourcentage de la population"
  )

# 19. Sauvegarder le graphique
ggsave("results/graphs/1_ex_bar_graph_riche_yoga.png", width = 10, height = 6, dpi = 300)
