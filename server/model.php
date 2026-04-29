<?php
/**
 * Ce fichier contient toutes les fonctions qui réalisent des opérations
 * sur la base de données, telles que les requêtes SQL pour insérer, 
 * mettre à jour, supprimer ou récupérer des données.
 */

/**
 * Définition des constantes de connexion à la base de données.
 *
 * HOST : Nom d'hôte du serveur de base de données, ici "localhost".
 * DBNAME : Nom de la base de données
 * DBLOGIN : Nom d'utilisateur pour se connecter à la base de données.
 * DBPWD : Mot de passe pour se connecter à la base de données.
 */
define("HOST", "localhost");
define("DBNAME", "gautier58");
define("DBLOGIN", "gautier58");
define("DBPWD", "gautier58");

/*AFFICHER TOUS LES FILMS */
function getAllMovies($ageLimite = 0){
    // Connexion à la base de données
    $cnx = new PDO("mysql:host=".HOST.";dbname=".DBNAME, DBLOGIN, DBPWD);
    // Requête SQL pour récupérer le menu avec des paramètres
    $sql = "SELECT SAE203_Movie.id, SAE203_Movie.name, SAE203_Movie.image, SAE203_Category.name AS category_name 
    FROM SAE203_Movie
    JOIN SAE203_Category ON SAE203_Movie.id_category = SAE203_Category.id
    WHERE SAE203_Movie.min_age <= :ageLimite
    ORDER BY SAE203_Category.name ASC, SAE203_Movie.name ASC;";
    // Prépare la requête SQL
    $stmt = $cnx->prepare($sql);
    // Exécute la requête SQL
    $stmt->execute([':ageLimite' => $ageLimite]);
    // Récupère les résultats de la requête sous forme d'objets
    $res = $stmt->fetchAll(PDO::FETCH_OBJ);
    return $res; // Retourne les résultats
}

/*AJOUTER UN FILM*/
function insertMovie($name, $director, $year, $length, $description, $category, $image, $trailer, $age){
    try {
        // Connexion à la base de données
        $cnx = new PDO("mysql:host=".HOST.";dbname=".DBNAME, DBLOGIN, DBPWD);

        $sql = "INSERT INTO SAE203_Movie (name, director, year, length, description, id_category, image, trailer, min_age) VALUES (:name, :director, :year, :length, :description, :id_category, :image, :trailer, :min_age)";

        // Prépare la requête SQL
        $stmt = $cnx->prepare($sql);

        // Exécute la requête SQL
        $stmt->bindParam(':name', $name);
        $stmt->bindParam(':director', $director);
        $stmt->bindParam(':year', $year);
        $stmt->bindParam(':length', $length);
        $stmt->bindParam(':description', $description);
        $stmt->bindParam(':id_category', $category);
        $stmt->bindParam(':image', $image);
        $stmt->bindParam(':trailer', $trailer);
        $stmt->bindParam(':min_age', $age);

        $stmt->execute();
        return $stmt->rowCount(); 
    } catch (PDOException $e) {
        return false; 
    }
}

/*RÉCUPÉRER UN FILM PAR SON ID*/
function getMovieById($id) {
    // Connexion à la base de données
    $cnx = new PDO("mysql:host=".HOST.";dbname=".DBNAME, DBLOGIN, DBPWD);
    
    $sql = "SELECT SAE203_Movie.*, SAE203_Category.name AS category_text 
            FROM SAE203_Movie 
            LEFT JOIN SAE203_Category ON SAE203_Movie.id_category = SAE203_Category.id 
            WHERE SAE203_Movie.id = :id";
    
    $stmt = $cnx->prepare($sql);
    $stmt->execute([':id' => $id]);

    $res = $stmt->fetch(PDO::FETCH_OBJ);
    return $res; 
}

/*RÉCUPÉRER TOUTES LES CATÉGORIES*/
function getAllCategories(){
    $cnx = new PDO("mysql:host=".HOST.";dbname=".DBNAME, DBLOGIN, DBPWD);
    $sql = "SELECT id, name FROM SAE203_Category ORDER BY name ASC";
    $stmt = $cnx->prepare($sql);
    $stmt->execute();
    return $stmt->fetchAll(PDO::FETCH_OBJ);
}

/*ENREGISTRER (AJOUTER OU MODIFIER) UN PROFIL*/
function saveProfile($id, $name, $image, $age_restriction){
    try {
        $cnx = new PDO("mysql:host=".HOST.";dbname=".DBNAME, DBLOGIN, DBPWD);

        if (empty($id)) {
             $sql = "INSERT INTO SAE203_Profils (name, avatar, age_restriction) VALUES (:name, :avatar, :age_restriction)";
             $stmt = $cnx->prepare($sql);
        } else {
             $sql = "REPLACE INTO SAE203_Profils (id, name, avatar, age_restriction) VALUES (:id, :name, :avatar, :age_restriction)";
             $stmt = $cnx->prepare($sql);
             $stmt->bindParam(':id', $id);
        }

        $stmt->bindParam(':name', $name);
        $stmt->bindParam(':avatar', $image);
        $stmt->bindParam(':age_restriction', $age_restriction);
        $stmt->execute();
        return true;
    } catch (PDOException $e) {
        return false;
    }
}

/*RÉCUPÉRER TOUS LES PROFILS*/
function getAllProfiles(){
    try {
        $cnx = new PDO("mysql:host=".HOST.";dbname=".DBNAME, DBLOGIN, DBPWD);
        $sql = "SELECT id, name, avatar, age_restriction FROM SAE203_Profils ORDER BY name ASC";
        $stmt = $cnx->prepare($sql);
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_OBJ);
    } catch (PDOException $e) {
        return false;
    }
}

/*AJOUTER UN FILM EN FAVORIS*/
function addFavorite($id_profile, $id_movie){
    try {
        $cnx = new PDO("mysql:host=".HOST.";dbname=".DBNAME, DBLOGIN, DBPWD);
        $sql = "INSERT INTO SAE203_Favorites (id_profile, id_movie) VALUES (:id_profile, :id_movie)";
        $stmt = $cnx->prepare($sql);
        $stmt->bindParam(':id_profile', $id_profile);
        $stmt->bindParam(':id_movie', $id_movie);
        $stmt->execute();
        return true;
    } catch (PDOException $e) {
        return false;
    }
}

/*RÉCUPÉRER LES FILMS FAVORIS D'UN PROFIL*/
function getFavoriteMovies($id_profile){
    try {
        $cnx = new PDO("mysql:host=".HOST.";dbname=".DBNAME, DBLOGIN, DBPWD);
        $sql = "SELECT SAE203_Movie.id, SAE203_Movie.name, SAE203_Movie.image 
        FROM SAE203_Movie 
        INNER JOIN SAE203_Favorites ON SAE203_Movie.id = SAE203_Favorites.id_movie 
        WHERE SAE203_Favorites.id_profile = :id_profile";
        $stmt = $cnx->prepare($sql);
        $stmt->bindParam(':id_profile', $id_profile);
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_OBJ);
    } catch (PDOException $e) {
        return false;
    }
}

/*SUPPRIMER UN FILM DES FAVORIS*/
function deleteFavorite($id_profile, $id_movie){
    try {
        $cnx = new PDO("mysql:host=".HOST.";dbname=".DBNAME, DBLOGIN, DBPWD);
        $sql = "DELETE FROM SAE203_Favorites WHERE id_profile = :id_profile AND id_movie = :id_movie";
        $stmt = $cnx->prepare($sql);
        $stmt->bindParam(':id_profile', $id_profile);
        $stmt->bindParam(':id_movie', $id_movie);
        $stmt->execute();
        return true;
    } catch (PDOException $e) {
        return false;
    }
}