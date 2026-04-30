let templateFile = await fetch("./component/MoviePopular/template.html");
let template = await templateFile.text();

let MessagetemplateFile = await fetch("./component/Movie/message.html");
let Messagetemplate = await MessagetemplateFile.text();

let MoviePopular = {};

MoviePopular.format = function (data) {
  if (!data || data.length == 0) {
    return Messagetemplate;
  }

  let htmlfinal = "";

  for (let movie of data) {
    let html = template;

    html = html.replaceAll("{{id}}", movie.id);
    html = html.replace("{{name}}", movie.name);
    html = html.replace("{{image}}", movie.image);
    html = html.replace("{{description}}", movie.description);

    htmlfinal += html;
  }
  return htmlfinal;
};

export { MoviePopular };