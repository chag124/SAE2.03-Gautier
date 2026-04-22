let templateFile = await fetch("./component/Movie/template.html");
let template = await templateFile.text();

let Movie = {};

Movie.format = function (movie) {
  let html = template;
  html = html.replace("{{name}}", movie.name);
  html = html.replace("{{affiche}}", movie.affiche);
  return html;
};

export { Movie };
