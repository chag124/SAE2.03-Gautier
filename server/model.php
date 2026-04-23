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


function getAllMovies(){
    // Connexion à la base de données
    $cnx = new PDO("mysql:host=".HOST.";dbname=".DBNAME, DBLOGIN, DBPWD);
    // Requête SQL pour récupérer le menu avec des paramètres
    $sql = "select id, name, image from SAE203_Movie";
    // Prépare la requête SQL
    $stmt = $cnx->prepare($sql);
    // Exécute la requête SQL
    $stmt->execute();
    // Récupère les résultats de la requête sous forme d'objets
    $res = $stmt->fetchAll(PDO::FETCH_OBJ);
    return $res; // Retourne les résultats
}

function insertMovie($name, $director, $year, $time, $description, $category, $image, $trailer, $age){
    try {
        // Connexion à la base de données
        $cnx = new PDO("mysql:host=".HOST.";dbname=".DBNAME, DBLOGIN, DBPWD);

        $sql = "INSERT INTO SAE203_Movie (name, director, year, length, description, id_category, image, trailer, min_age) VALUES (:name, :director, :year, :length, :description, :id_category, :image, :trailer, :min_age)";

        // Prépare la requête SQL
        $stmt = $cnx->prepare($sql);

        // Exécute la requête SQL
        $stmt->execute([
            ':name' => $name,
            ':director' => $director,
            ':year' => $year,
            ':length' => $time,
            ':description' => $description,
            ':id_category' => $category,
            ':image' => $image,
            ':trailer' => $trailer,
            ':min_age' => $age
        ]);
        return true;
    } catch (PDOException $e){
        return false;
    }
}