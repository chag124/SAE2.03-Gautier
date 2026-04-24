import { Movie } from '../Movie/script.js';

let templateFile = await fetch("./component/MovieCategory/template.html");
let template = await templateFile.text();


let MovieCategory = {};

MovieCategory.format = function (categoryName, movies) {

  let html = template;

  html = html.replace("{{categoryName}}", categoryName);

  let moviesHtml = "";
  movies.forEach((movie) => {
    moviesHtml += Movie.format(movie);
  });
  html = html.replace("{{movieList}}", moviesHtml);

  return html;
};

export { MovieCategory };
