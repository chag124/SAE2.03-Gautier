let templateFile = await fetch("./component/NavBar/template.html");
let template = await templateFile.text();

let itemFile = await fetch("./component/NavBar/category-item.html");
let itemtemplate = await templateFile.text();

let NavBar = {};

NavBar.format = function (hAbout, hHome, categories = []) {
  let html = template;

  html = html.replace("{{hAbout}}", hAbout);
  html = html.replace("{{hHome}}", hHome);

  let categoriesHtml = "";

  categories.forEach((car) => {
    let templateItem = itemtemplate.replaceAll("{{catname}}", cat);
    categoriesHtml += templateItem;
  });

  html = html.replace("{{categoryItems}}", categoriesHtml);

  return html;
};

export { NavBar };
