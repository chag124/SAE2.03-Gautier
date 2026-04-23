let templateFile = await fetch("./component/Movie/template.html");
let template = await templateFile.text();


let MessagetemplateFile = await fetch("./component/Movie/message.html");
let Messagetemplate = await templateFile.text();

let Movie = {};

Movie.format = function (data) {

  if (!data || data.lenght == 0) {
    return Messagetemplate;
  }

  let htmlfinal = "";

  for (let movie of data) {
    let html = template;

    html = html.replace("{{name}}", movie.name);
    html = html.replace("{{image}}", movie.image);
    htmlfinal += html;
  }
  return htmlfinal;
};

export { Movie };
