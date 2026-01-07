# IPPOO WORK - Identité de Marque & Design System

Ce document définit les lignes directrices de l'identité visuelle et du design system pour la plateforme IPPOO WORK.

## 1. Identité & Branding

### Palette de Couleurs

La palette est conçue pour être professionnelle, moderne et dynamique, inspirant confiance et innovation.

- **Primaire (Bleu Profond) :** `#0A2A4E` - Utilisé pour les éléments principaux, les titres importants et les boutons d'action primaires. Représente la confiance, la stabilité et le professionnalisme.
- **Secondaire (Turquoise Vif) :** `#00C49A` - Utilisé pour les appels à l'action secondaires, les icônes, et les éléments interactifs. Apporte une touche d'énergie et de modernité.
- **Accent (Or) :** `#FFB800` - Utilisé pour les badges, les notifications importantes et les éléments de mise en avant. Symbolise la valeur et la réussite.
- **Neutres :**
  - **Fond Principal :** `#F9FAFB` (Gris très clair) - Pour un look épuré et aéré.
  - **Texte Principal :** `#1F2937` (Gris foncé) - Assure une excellente lisibilité.
  - **Texte Secondaire :** `#6B7280` (Gris moyen) - Pour les descriptions et les métadonnées.
  - **Bordures & Lignes :** `#E5E7EB` (Gris clair) - Pour séparer les sections et les éléments de manière subtile.
- **Couleurs de Statut :**
  - **Succès :** `#10B981` (Vert)
  - **Erreur :** `#EF4444` (Rouge)
  - **Avertissement :** `#F59E0B` (Orange)
  - **Information :** `#3B82F6` (Bleu clair)

### Typographies

- **Titres (Headings) :** `Poppins` (Google Font) - Une police sans-serif moderne et géométrique, qui offre une excellente lisibilité et un look contemporain. On utilisera différentes graisses (Bold, SemiBold) pour la hiérarchie.
- **Corps de texte (Body) :** `Inter` (Google Font) - Une police très lisible, optimisée pour les interfaces utilisateur, parfaite pour les paragraphes et les descriptions.

### Style d'Illustrations

Des illustrations vectorielles modernes et épurées. Le style sera un mélange de "corporate" et "humain", montrant des scènes de collaboration, de réussite professionnelle et d'utilisation de la technologie. Les personnages seront diversifiés et inclusifs. On évitera les illustrations trop abstraites pour rester concret.

### Moodboard

Le moodboard s'inspire de plateformes comme Malt, Stripe et Notion.
- **Visuel :** Clean, aéré, avec beaucoup d'espaces blancs.
- **Interface :** Orientée "dashboard", avec des cartes (cards) bien définies, des tableaux de bord clairs et des graphiques de données.
- **Atmosphère :** Professionnelle, technologique, fiable et humaine.

### Logo Simplifié (Proposition)

- **Concept :** Deux "O" de "IPPOO" qui se lient pour former le symbole de l'infini (∞) ou un maillon de chaîne, symbolisant la connexion durable entre candidats et entreprises.
- **Typographie :** Le mot "IPPOO" en gras et "WORK" en plus léger, pour marquer la distinction.
- **Couleur :** Le logo utiliserait le bleu profond (`#0A2A4E`) et le turquoise vif (`#00C49A`).

---

## 2. Design System

### Boutons

- **Primaire :** Fond `#0A2A4E`, texte blanc. Hover : fond légèrement plus clair.
- **Secondaire :** Fond `#00C49A`, texte blanc. Hover : fond légèrement plus clair.
- **Tertiaire :** Bordure `#E5E7EB`, texte `#1F2937`. Hover : fond `#F9FAFB`.
- **Tailles :** Small, Medium, Large.
- **États :** Normal, Hover, Focus, Disabled.

### Composants

- **Cartes (Cards) :** Utilisées pour les profils, les offres d'emploi, les résumés. Ombre portée subtile, coins arrondis, bordure fine (`#E5E7EB`).
- **Formulaires :** Champs de saisie avec labels flottants. Validation en temps réel avec des messages clairs (couleurs de statut).
- **Badges :** Pour les compétences, les statuts de mission. Coins arrondis, couleurs vives (Accent, Statut).
- **Modales :** Pour les confirmations, les formulaires rapides. Fond semi-transparent pour obscurcir la page derrière.
- **Tables :** Pour lister les missions, les candidatures, les factures. En-têtes fixes, tri et filtres.

---

## 3. Architecture du site (Sitemap)

### Pages Publiques
- **Accueil (`/`)**
- **À propos (`/a-propos`)**
- **Services (`/services`)**
- **Fonctionnement (`/fonctionnement`)**
- **Tarifs / Offres (`/tarifs`)**
- **FAQ (`/faq`)**
- **Contact (`/contact`)**
- **Politique de confidentialité (`/politique-de-confidentialite`)**
- **Conditions Générales d'Utilisation (`/cgu`)**
- **Inscription (`/inscription`)**
- **Connexion (`/connexion`)**

### Espace Candidat (Préfixe: `/candidat`)
- **Tableau de bord (`/candidat/dashboard`)**
- **Profil (`/candidat/profil`)**
- **Compétences (`/candidat/competences`)**
- **Documents (`/candidat/documents`)**
- **Offres disponibles (`/candidat/offres`)**
- **Mes missions (`/candidat/missions`)**
- **Évaluations (`/candidat/evaluations`)**
- **Notifications (`/candidat/notifications`)**
- **Paramètres (`/candidat/parametres`)**

### Espace Entreprise (Préfixe: `/entreprise`)
- **Tableau de bord (`/entreprise/dashboard`)**
- **Profil entreprise (`/entreprise/profil`)**
- **Publier une offre (`/entreprise/offres/creer`)**
- **Liste de mes offres (`/entreprise/offres`)**
- **Candidatures reçues (`/entreprise/candidatures`)**
- **Matching (`/entreprise/matching`)**
- **Missions en cours (`/entreprise/missions`)**
- **Paiements / Factures (`/entreprise/facturation`)**
- **Paramètres (`/entreprise/parametres`)**

### Espace Administration (Préfixe: `/admin`)
- **Gestion utilisateurs (`/admin/utilisateurs`)**
- **Gestion entreprises (`/admin/entreprises`)**
- **Vérification documents (`/admin/verifications`)**
- **Offres & missions (`/admin/missions`)**
- **Matching & algorithmes (`/admin/algorithmes`)**
- **Finance & paiements (`/admin/finance`)**
- **Support & litiges (`/admin/support`)**
- **Analyse & statistiques (`/admin/statistiques`)**

---

## 4. Structure de la Page d'Accueil

### Titre optimisé (SEO)
`IPPOO WORK : La plateforme intelligente pour trouver les meilleurs talents et missions`

### Structure & Contenu

**1. Hero Section**
- **Titre principal :** `Trouvez le talent idéal. Décrochez la mission parfaite.`
- **Sous-titre :** `IPPOO WORK connecte les entreprises innovantes avec les meilleurs experts pour des missions à forte valeur ajoutée.`
- **Micro-texte :** `Rapide. Fiable. Intelligent.`
- **CTA Primaires :**
    - `Je cherche un talent` (Bouton Primaire) -> Redirige vers l'inscription Entreprise.
    - `Je cherche une mission` (Bouton Secondaire) -> Redirige vers l'inscription Candidat.
- **UI :** Illustration principale dynamique, barre de recherche simple (ex: "Développeur React", "Chef de projet").

**2. Section Confiance (Social Proof)**
- **Titre :** `Ils nous font confiance`
- **Contenu :** Logos de quelques entreprises partenaires (fictifs pour le moment : "Innovatech", "Quantum Solutions", "Digital Horizon").
- **UI :** Carrousel de logos en niveaux de gris.

**3. Section Fonctionnement (Comment ça marche ?)**
- **Titre :** `Trouver, collaborer, réussir. En 3 étapes simples.`
- **Structure :** 3 cartes verticales ou horizontales avec icônes.
    - **Carte 1 : Pour les entreprises**
        - **Titre :** `Publiez votre besoin`
        - **Texte :** `Décrivez votre projet en quelques minutes. Notre IA analyse votre demande pour cibler les meilleurs profils.`
    - **Carte 2 : Matching intelligent**
        - **Titre :** `Recevez des propositions`
        - **Texte :** `Accédez à une sélection de candidats qualifiés, testés et prêts à démarrer.`
    - **Carte 3 : Collaborez**
        - **Titre :** `Gérez tout en un seul lieu`
        - **Texte :** `Suivez l'avancement, communiquez et effectuez les paiements en toute sécurité depuis votre tableau de bord.`
- **CTA :** `Découvrir le fonctionnement` (Bouton Tertiaire) -> Lien vers la page `/fonctionnement`.

**4. Section Avantages (Pour les deux cibles)**
- **Titre :** `Une plateforme, deux univers.`
- **Structure :** Section divisée en deux colonnes.
    - **Colonne 1 : Pour les Talents**
        - **Titre :** `Boostez votre carrière.`
        - **Argument 1 :** `Des missions exclusives qui correspondent à vos compétences.`
        - **Argument 2 :** `Un profil unique pour mettre en valeur votre expertise.`
        - **Argument 3 :** `Des paiements rapides et sécurisés.`
        - **CTA :** `Créer mon profil` (Bouton Secondaire)
    - **Colonne 2 : Pour les Entreprises**
        - **Titre :** `Recrutez plus intelligemment.`
        - **Argument 1 :** `Accédez à un vivier de talents vérifiés.`
        - **Argument 2 :** `Réduisez vos délais de recrutement de 50%.`
        - **Argument 3 :** `Gérez vos contrats et paiements sans effort.`
        - **CTA :** `Publier une offre` (Bouton Primaire)

**5. Section Témoignages**
- **Titre :** `Ce que nos utilisateurs disent de nous`
- **Contenu :** 2-3 cartes de témoignages avec photo, nom, poste et entreprise/statut.
    - **Exemple 1 (Entreprise) :** `"Grâce à IPPOO WORK, nous avons trouvé un développeur expert en 48h. Le processus est d'une fluidité incroyable." - CEO, Innovatech`
    - **Exemple 2 (Talent) :** `"La plateforme m'a permis d'accéder à des missions passionnantes qui ne sont nulle part ailleurs. Mon activité a décollé." - Développeur Full-Stack`
- **UI :** Slider ou cartes statiques.

**6. Section CTA Final**
- **Titre :** `Prêt à transformer votre manière de travailler ?`
- **Sous-titre :** `Rejoignez des milliers d'entreprises et de talents qui construisent le futur du travail.`
- **CTA :** `Commencer l'aventure` (Bouton Primaire, grande taille)

**7. Footer**
- **Structure :** 4 colonnes.
    - **Colonne 1 :** Logo IPPOO WORK + slogan. Liens vers les réseaux sociaux.
    - **Colonne 2 (Navigation) :** À propos, Services, Tarifs, Contact.
    - **Colonne 3 (Légal) :** CGU, Politique de confidentialité, Mentions légales.
    - **Colonne 4 (Newsletter) :** `Restez informé` avec un champ email et un bouton d'inscription.
