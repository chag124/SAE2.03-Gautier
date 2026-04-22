let templateFile = await fetch("./component/Movie/template.html");
let template = await templateFile.text();

let Movie = {};

Movie.format = function (hAbout, hHome) {
  let html = template;
  html = html.replace("{{hAbout}}", hAbout);
  return html;
};

export { Movie };
