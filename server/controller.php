<?php

/** ARCHITECTURE PHP SERVEUR  : Rôle du fichier controller.php
 * 
 *  Dans ce fichier, on va définir les fonctions de contrôle qui vont traiter les requêtes HTTP.
 *  Les requêtes HTTP sont interprétées selon la valeur du paramètre 'todo' de la requête (voir script.php)
 *  Pour chaque valeur différente, on déclarera une fonction de contrôle différente.
 * 
 *  Les fonctions de contrôle vont éventuellement lire les paramètres additionnels de la requête, 
 *  les vérifier, puis appeler les fonctions du modèle (model.php) pour effectuer les opérations
 *  nécessaires sur la base de données.
 *  
 *  Si la fonction échoue à traiter la requête, elle retourne false (mauvais paramètres, erreur de connexion à la BDD, etc.)
 *  Sinon elle retourne le résultat de l'opération (des données ou un message) à includre dans la réponse HTTP.
 */

/** Inclusion du fichier model.php
 *  Pour pouvoir utiliser les fonctions qui y sont déclarées et qui permettent
 *  de faire des opérations sur les données stockées en base de données.
 */
require("model.php");


function readMoviesController(){
    $movies = getAllMovies();

    $groupeMovies = [];
    foreach ($movies as $movie){
        $catName = $movie->category_name;
        if (!isset($groupeMovies[$catName])){
            $groupeMovies[$catName]=[];
        }
        $groupeMovies[$catName][] = $movie;
    }
    return $groupeMovies;
}

/* Fonction pour ajouter un film */
function addMovieController(){
    $name = $_POST['name'];
    $director = $_POST['director'];
    $year = $_POST['year'];
    $time = $_POST['time'];
    $description = $_POST['description'];
    $category = $_POST['category'];
    $image = $_POST['image'];
    $trailer = $_POST['trailer'];
    $age = $_POST['age'];

    if (empty($name) || empty($director) || empty($category)){
        return "Erreur : Tous les champs sont obligatoires";
    }

    /*valider l'âge*/
    if ($age == null || $age <0 || $age > 18){
        return "Erreur; L'âge doit être un chiffre compris entre 0 et 18";
    }

    $res = insertMovie($name, $director, $year, $time, $description, $category, $image, $trailer, $age);

    if ($res){
        return "Le film a bien été enregistré";
    }
    else {
        return false;
    }
}

function readMovieDetailController() {
    $id = $_REQUEST['id'] ?? null;

    if ($id === null) {
        return false; 
    }
    $movie = getMovieById($id);
    
    return $movie;
}

function getCategoriesController(){
    return getAllCategories();
}

/* Fonction pour ajouter un profil */
function addProfileController(){
    $name = $_POST['name'];
    $image = $_POST['image'];
    $age_restriction = $_POST['age_restriction'];

    if (empty($name) || empty($image) || empty($age_restriction)){
        return "Erreur : Tous les champs sont obligatoires";
    }

    if ($age_restriction == null || $age_restriction <0 || $age_restriction > 99){
        return "Erreur; L'âge doit être un chiffre compris entre 0 et 99";
    }

    $res = insertProfile($name, $image, $age_restriction);

    if ($res){
        return "Le profil a bien été enregistré";
    }
    else {
        return false;
    }
}