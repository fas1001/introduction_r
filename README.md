# 📊 Introduction à R

Ce dépôt contient le matériel nécessaire pour vous initier à l'analyse de données avec R. Il est conçu pour vous guider pas à pas dans l'apprentissage de R à travers un projet d'analyse concret.

## 🎯 Objectifs

- Apprendre les bases de R et du tidyverse
- Comprendre comment importer et nettoyer des données
- Créer des visualisations avec ggplot2
- Réaliser des analyses statistiques simples
- Produire un rapport d'analyse avec Quarto

## 📁 Structure du dépôt

```
.
├── docs/                    # Documentation et rapports
│   └── projet/             # Gabarit du rapport final
├── R/                      # Vos scripts R
│   └── 0_introduction.R    # Script à compléter
├── tests/                  # Exemples et solutions
│   └── 0_introduction.R    # Exemple complet commenté
└── README.md              # Ce fichier
```

## 🚀 Pour commencer

1. Clonez ce dépôt sur votre ordinateur :
```bash
git clone [URL_DU_DEPOT]
```

2. Assurez-vous d'avoir installé :
   - R ([télécharger ici](https://cran.r-project.org/))
   - RStudio ([télécharger ici](https://posit.co/download/rstudio-desktop/))
   - Les packages nécessaires :
```r
install.packages(c("tidyverse", "modelsummary"))
```

3. Ouvrez le projet dans RStudio :
   - Naviguez vers le dossier du projet
   - Double-cliquez sur le fichier `.Rproj`

## 📝 Instructions

1. **Commencez par explorer le fichier exemple** dans `tests/0_introduction.R`
   - Ce fichier contient un exemple complet et commenté
   - Il vous montre exactement comment réaliser chaque étape

2. **Travaillez sur votre propre analyse** dans `R/0_introduction.R`
   - Suivez les commentaires qui vous guident étape par étape
   - Choisissez vos propres variables parmi celles proposées
   - N'hésitez pas à consulter l'exemple si vous êtes bloqué

3. **Créez votre rapport** dans `docs/projet/`
   - Utilisez le gabarit Quarto fourni
   - Incluez vos graphiques et analyses
   - Citez vos sources avec le fichier `.bib`

## 🤔 Besoin d'aide ?

- Consultez l'exemple dans `tests/0_introduction.R`
- Référez-vous aux commentaires dans votre script
- Utilisez l'aide de R avec `?nom_de_fonction`
- N'hésitez pas à poser vos questions sur le canal Slack du cours

## 📚 Ressources additionnelles

- [R for Data Science](https://r4ds.hadley.nz/)
- [Introduction à R sur DataCamp](https://app.datacamp.com/learn/courses/free-introduction-to-r)
- [Aide-mémoire tidyverse](https://www.rstudio.com/resources/cheatsheets/)

## 🎓 Note importante

Ce projet est conçu pour l'apprentissage. Prenez le temps de comprendre chaque étape et n'hésitez pas à expérimenter avec le code. L'exemple fourni est là pour vous aider, pas pour être copié directement !

---
*Développé pour le cours FAS1001 - Introduction aux mégadonnées en sciences sociales*
