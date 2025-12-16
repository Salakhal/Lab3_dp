
USE bibliotheque;

-- Sélection de toutes les colonnes
SELECT * FROM auteur;

--  Sélection de colonnes spécifiques
SELECT id, nom FROM abonne;

-- Filtrage simple avec WHERE
SELECT titre, disponible
FROM ouvrage
WHERE disponible = TRUE;

--  Opérateurs de comparaison (Dates)
SELECT * FROM emprunt
WHERE date_debut > '2025-06-01';

-- Opérateurs logiques
-- Combinaison AND
SELECT titre
FROM ouvrage
WHERE disponible = FALSE
  AND auteur_id = 3;

-- Combinaison OR
SELECT nom
FROM abonne
WHERE email LIKE '%@gmail.com'
   OR email LIKE '%@yahoo.fr';

--  Négation NOT
SELECT *
FROM abonne
WHERE NOT (email LIKE '%@example.com');

--  Recherche par motif avec LIKE
-- Commence par 'M'
SELECT nom
FROM auteur
WHERE nom LIKE 'M%';

--  Contient un '@' (vérification format email basique)
SELECT email
FROM abonne
WHERE email LIKE '%@%';

-- Ensembles et intervalles
-- Ensemble spécifique (IN)
SELECT nom
FROM abonne
WHERE id IN (1, 3, 5);

--  Intervalle de dates (BETWEEN)
SELECT *
FROM emprunt
WHERE date_debut BETWEEN '2025-05-01' AND '2025-05-31';

--  Gestion des valeurs NULL
-- Emprunts en cours (date_fin est nulle)
SELECT *
FROM emprunt
WHERE date_fin IS NULL;

-- Emprunts terminés (date_fin n'est pas nulle)
SELECT *
FROM emprunt
WHERE date_fin IS NOT NULL;

--  Tri et pagination
--  Tri croissant
SELECT titre, disponible
FROM ouvrage
ORDER BY titre ASC;

-- Limite de résultats
SELECT * FROM abonne
ORDER BY id
LIMIT 10;

-- 10.3 Pagination (offset)
SELECT *
FROM abonne
ORDER BY id
LIMIT 5 OFFSET 5;


-- Récupérer les trois ouvrages les plus récemment ajoutés
-- (On trie par ID décroissant car les ID sont incrémentaux)
SELECT * FROM ouvrage 
ORDER BY id DESC 
LIMIT 3;

--  Lister les auteurs dont le nom contient au moins cinq caractères
-- (Utilisation de CHAR_LENGTH pour compter les caractères)
SELECT * FROM auteur 
WHERE CHAR_LENGTH(nom) >= 5;

-- Trouver tous les abonnés dont l’email ne provient pas de example.com
SELECT * FROM abonne 
WHERE email NOT LIKE '%@example.com';

--  Afficher les emprunts ayant duré plus de 30 jours
-- (Utilisation de DATEDIFF qui retourne la différence en jours)
SELECT * FROM emprunt 
WHERE DATEDIFF(date_fin, date_debut) > 30;

--  Combiner filtrage et tri : lister les abonnés Gmail par ordre alphabétique
SELECT * FROM abonne 
WHERE email LIKE '%@gmail.com' 
ORDER BY nom ASC;