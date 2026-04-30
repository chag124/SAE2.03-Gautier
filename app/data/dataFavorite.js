// URL où se trouve le répertoire "server" sur mmi.unilim.fr
//let HOST_URL = "https://mmi.unilim.fr/~gautier58/SAE2.03-Gautier";

let HOST_URL = "..";

let dataFavorite = {};

/*ajouter un film aux favoris*/
dataFavorite.add = async function (id_profile, id_movie) {

    let url = HOST_URL + "/server/script.php?todo=addFavoriteMovie&id_profile=" + id_profile + "&id_movie=" + id_movie;
    try {
        let answer = await fetch(url);
        let data = await answer.json();
        return data;
    }
    catch (error) {
        return "Erreur lors de l'ajout aux favoris";
    }
}

/*lire les films favoris d'un profil*/
dataFavorite.read = async function (id_profile) {
    let url = HOST_URL + "/server/script.php?todo=readFavoriteMovies&id_profile=" + id_profile;
    try {
        let answer = await fetch(url);
        let data = await answer.json();
        return data;
    }
    catch (error) {
        return [];
    }
}

/*supprimer un film des favoris*/
dataFavorite.delete = async function (id_profile, id_movie) {
    let url = HOST_URL + "/server/script.php?todo=deleteFavoriteMovie&id_profile=" + id_profile + "&id_movie=" + id_movie;
    try {
        let answer = await fetch(url);
        let data = await answer.json();
        return data;
    }
    catch (error) {
        return "Erreur lors de la suppression des favoris";
    }
}

export { dataFavorite };
