// URL où se trouve le répertoire "server" sur mmi.unilim.fr
let HOST_URL = "https://mmi.unilim.fr/~gautier58/SAE2.03-Gautier";

let DataMovie = {};

DataMovie.requestMovies = async function (age = 0) {
    let answer = await fetch(HOST_URL + "/server/script.php?todo=readmovies&age=" + age);
    let data = await answer.json();
    return data;
}

DataMovie.requestMovieDetails = async function (id) {
    let answer = await fetch(HOST_URL + "/server/script.php?todo=readMovieDetail&id=" + id);
    let data = await answer.json();
    return data;
}

DataMovie.requestPopularMovies = async function (age = 0) {
    let answer = await fetch(HOST_URL + "/server/script.php?todo=getPopularMovies&age=" + age);
    let data = await answer.json();
    return data;
}


export { DataMovie };
