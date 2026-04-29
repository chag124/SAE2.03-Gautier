// URL où se trouve le répertoire "server" sur mmi.unilim.fr
let HOST_URL = "https://mmi.unilim.fr/~gautier58/SAE2.03-Gautier";

let dataProfile = {};

/*Lire les profils*/
dataProfile.read = async function () {
    let url = HOST_URL + "/server/script.php?todo=readProfiles";
    let answer = await fetch(url);
    return await answer.json();
}

/*enregistrer (ajouter ou modifier) un profil*/
dataProfile.save = async function (fd) {
    let url = HOST_URL + "/server/script.php?todo=saveProfile";
    let options = {
        method: 'POST', body: fd
    };
    try {
        let answer = await fetch(url, options);
        return await answer.json();
    }
    catch (error) {
        return "Erreur lors de la connexion pour le profil";
    }
}

export { dataProfile };
