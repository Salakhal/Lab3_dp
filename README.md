# Lab 3 : Sélection et filtrage de données (MySQL)

Ce dépôt contient les travaux pratiques du **Lab 3**, concentré sur l'écriture de requêtes SQL pour sélectionner (`SELECT`), filtrer (`WHERE`), et trier (`ORDER BY`) des données dans la base `bibliotheque`.

## 📋 Prérequis
* Serveur MySQL installé et actif.
* Base de données `bibliotheque` (avec tables `auteur`, `ouvrage`, `abonne`, `emprunt`).
* Client : MySQL Workbench.

---

## Résultats et Captures d'écran :
 Cette section valide la bonne exécution des requêtes via MySQL Workbench.
 
 ### Sélection globale

<img width="341" height="213" alt="image" src="https://github.com/user-attachments/assets/c230cb79-7c0c-44bd-b84f-6ae0d690239d" />


### Sélection colonnes spécifiques

<img width="323" height="201" alt="image" src="https://github.com/user-attachments/assets/38254095-45b4-4aa8-96e3-ed44090d120d" />


 ### Filtrage simple (Booléen)
 
<img width="403" height="175" alt="image" src="https://github.com/user-attachments/assets/ea49f01d-9a04-4921-9f73-33597e265f10" />


### Comparaison de dates

<img width="551" height="115" alt="image" src="https://github.com/user-attachments/assets/b1385439-9f04-4eb1-932b-dc3bef46f5ad" />


### Opérateurs logiques (AND, OR, NOT)

**Combinaison AND**

<img width="237" height="115" alt="image" src="https://github.com/user-attachments/assets/efc03320-9e73-4d4b-a45e-d8428074e3f4" />

**Combinaison OR**

<img width="211" height="169" alt="image" src="https://github.com/user-attachments/assets/6dc5d8b2-d611-4613-bb20-f89df2939dda" />


**Négation NOT**

<img width="501" height="210" alt="image" src="https://github.com/user-attachments/assets/11566faa-66e1-4ca5-a15d-f18bc900e143" />


### Recherche par motif (LIKE)

**Commence par 'M'**

<img width="201" height="106" alt="image" src="https://github.com/user-attachments/assets/b6ae96ed-e241-45ab-b0ab-eda90179d89d" />

**Contient un '@' (vérification format email basique)**

<img width="334" height="201" alt="image" src="https://github.com/user-attachments/assets/d47d10b9-0028-409a-a4ee-48ba8084d6a1" />

### Ensembles et Intervalles

**Ensemble spécifique (IN)**

<img width="216" height="154" alt="image" src="https://github.com/user-attachments/assets/8c23e3dc-8097-47cc-b6e2-dd7c9e43c2ca" />

**Intervalle de dates (BETWEEN)**

<img width="554" height="180" alt="image" src="https://github.com/user-attachments/assets/62998371-3db3-45a4-b493-8e40bc9fc7ba" />

### Gestion des NULL
 **Emprunts en cours (date_fin est nulle)**

 <img width="511" height="129" alt="image" src="https://github.com/user-attachments/assets/db04526d-5971-4d18-89e5-7db3796ca383" />

**Emprunts terminés (date_fin n'est pas nulle)**

<img width="527" height="172" alt="image" src="https://github.com/user-attachments/assets/0cf33074-fece-44e6-8550-e765f8a3c477" />

###  Tri et pagination
**Tri croissant**

<img width="416" height="224" alt="image" src="https://github.com/user-attachments/assets/a5f8adec-66c8-4576-920b-e84eb68e2b65" />

### Limite de résultats
<img width="493" height="207" alt="image" src="https://github.com/user-attachments/assets/53bcc84c-a489-47d6-9921-b769f7a36faf" />

### Pagination (offset)

<img width="352" height="96" alt="image" src="https://github.com/user-attachments/assets/bfd3580c-208b-4a6a-bfd1-26fbc126fba0" />


### Récupérer les trois ouvrages les plus récemment ajoutés
**(On trie par ID décroissant car les ID sont incrémentaux)**

 <img width="561" height="172" alt="image" src="https://github.com/user-attachments/assets/ec0ef348-3483-48fd-92a3-085a29763d26" />


###  Lister les auteurs dont le nom contient au moins cinq caractères
**(Utilisation de CHAR_LENGTH pour compter les caractères)**

<img width="306" height="205" alt="image" src="https://github.com/user-attachments/assets/5050692f-aca5-48de-8490-7bdf144f206f" />


### Trouver tous les abonnés dont l’email ne provient pas de example.com

<img width="508" height="192" alt="image" src="https://github.com/user-attachments/assets/479270c4-acb7-4dec-8172-edebdbe38a82" />


###  Afficher les emprunts ayant duré plus de 30 jours
 **(Utilisation de DATEDIFF qui retourne la différence en jours)**

<img width="524" height="107" alt="image" src="https://github.com/user-attachments/assets/8c5b88b0-d4cb-46a2-87a6-cf375d2c3495" />


###  Combiner filtrage et tri : lister les abonnés Gmail par ordre alphabétique
<img width="437" height="161" alt="image" src="https://github.com/user-attachments/assets/46af133a-dd02-40d4-8a20-c8554e127c38" />

---


## 👤 Auteur

* **École Normale Supérieure de Marrakech**
  
* **Réalisé par :** SALMA LAKHAL
  
* **Filière  :** CLE_INFO_S5
  
* **Date :**  16/12/2025
  
* **Encadré par :** Pr. Mohamed LACHGAR




















