let templateFile = await fetch("./component/Movie/template.html");
let template = await templateFile.text();

let MessagetemplateFile = await fetch("./component/Movie/message.html");
let Messagetemplate = await MessagetemplateFile.text();

let Movie = {};

Movie.format = function (data) {
  if (!data || data.length == 0) {
    return Messagetemplate;
  }

  let htmlfinal = "";

  for (let movie of data) {
    let html = template;

    let isFav = false;
    if (window.favorites) {
      for (let i = 0; i < window.favorites.length; i++) {
        if (window.favorites[i].id == movie.id) {
          isFav = true;
          break;
        }
      }
    }

    html = html.replaceAll("{{id}}", movie.id);
    html = html.replace("{{name}}", movie.name);
    html = html.replace("{{image}}", movie.image);

    if (isFav) {
      html = html.replace("{{handler}}", "C.handlerDeleteFavorite");
      html = html.replace("{{button_src}}", "suppression.png");
    } else {
      html = html.replace("{{handler}}", "C.handlerAddFavorite");
      html = html.replace("{{button_src}}", "icone.png");
    }

    htmlfinal += html;
  }
  return htmlfinal;
};

export { Movie };