// URL où se trouve le répertoire "server" sur mmi.unilim.fr
let HOST_URL = "https://mmi.unilim.fr/~gautier58/SAE2.03-Gautier";

let dataProfile = {};

/*ajouter un profil*/
dataProfile.read = async function () {

    let url = HOST_URL + "/server/script.php?todo=readProfiles";
    try {
        let answer = await fetch(url);
        let data = await answer.json();
        return data;
    }
    catch (error) {
        return "Erreur lors de la récupération des profils";
    }
}

export { dataProfile };
