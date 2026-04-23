// URL où se trouve le répertoire "server" sur mmi.unilim.fr
let HOST_URL = "https://mmi.unilim.fr/~gautier58/SAE2.03-Gautier";

let DataMovie = {};

DataMovie.add = async function (fd) {

    let url = HOST_URL + "/server/script.php?todo=addMovie";
    let options = {
        method: 'POST', body: fd
    };
    try {
        let answer = await fetch(url, options);
        let data = await answer.json();
        return data.message || data;
    }
    catch (error) {
        return "Erreur lors de la connexion";
    }
}

export { DataMovie };
