# 📊 Introduction à R

Ce dépôt contient le matériel nécessaire pour vous initier à l'analyse de données avec R. Il est conçu pour vous guider pas à pas dans l'apprentissage de R à travers un projet d'analyse concret.

## 🎯 Objectifs

- Apprendre les bases de R et du tidyverse
- Comprendre comment importer et nettoyer des données
- Créer des visualisations avec ggplot2
- Réaliser des analyses statistiques simples

## 📁 Structure du projet

```
fas1001_introduction_r/
├── data/                         # Données du projet
│   ├── processed/                # Données nettoyées
│   └── raw/                      # Données brutes
├── docs/                         # Documentation et rapports
│   └── projet/                   # Gabarit du rapport final
│       ├── img/                  # Images pour le rapport
│       └── projet.qmd            # Fichier Quarto du rapport
├── R/                            # Vos scripts R
│   └── 0_introduction.R          # Script à compléter
├── results/                      # Résultats de l'analyse
│   ├── graphs/                   # Graphiques générés
│   └── tables/                   # Tableaux générés
└── tests/                        # Exemples et solutions
    └── 0_exemple_introduction.R  # Exemple complet commenté
```

## 🚀 Pour commencer

1. **Installez les logiciels requis** :
   - R ([télécharger ici](https://cran.r-project.org/))
   - RStudio ([télécharger ici](https://posit.co/download/rstudio-desktop/))

2. **Téléchargez et décompressez le projet** :
   - Téléchargez le fichier ZIP du projet
   - Sur Windows : 
     - Faites un clic droit sur le fichier ZIP
     - Sélectionnez "Extraire tout..."
     - Choisissez un dossier de destination
   - Sur Mac :
     - Double-cliquez sur le fichier ZIP
     - Le dossier sera automatiquement décompressé

3. **Créez un projet R** :
   - Ouvrez RStudio
   - Cliquez sur File → New Project
   - Sélectionnez "Existing Directory"
   - Naviguez vers le dossier décompressé et sélectionnez-le
   - Cliquez sur "Create Project"

4. **Installez les packages nécessaires** :
```r
install.packages(c("tidyverse", "modelsummary"))
```

## 📝 Instructions

1. **Commencez par explorer le fichier exemple** dans `tests/0_exemple_introduction.R`
   - Ce fichier contient un exemple complet et commenté
   - Il vous montre exactement comment réaliser chaque étape

2. **Travaillez sur votre propre analyse** dans `R/0_introduction.R`
   - Suivez les commentaires qui vous guident étape par étape
   - Choisissez vos propres variables parmi celles proposées
   - N'hésitez pas à consulter l'exemple si vous êtes bloqué

## 🤔 Besoin d'aide ?

- Consultez l'exemple dans `tests/0_exemple_introduction.R`
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
