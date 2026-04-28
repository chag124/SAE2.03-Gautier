let templateFile = await fetch("./component/NavBar/template.html");
let template = await templateFile.text();

let itemFile = await fetch("./component/NavBar/category-item.html");
let itemtemplate = await itemFile.text();

let profileItemFile = await fetch("./component/NavBar/profile-item.html");
let profileItemTemplate = await profileItemFile.text();

let NavBar = {};

NavBar.format = function (hAbout, hHome, categories = [], profiles = [], activeProfile = null) {
  let html = template;

  html = html.replace("{{hAbout}}", hAbout);
  html = html.replace("{{hHome}}", hHome);


  /*Boucle pour les catégories */
  let categoriesHtml = "";
  for (const cat of categories) {
    categoriesHtml += itemtemplate.replaceAll("{{catName}}", cat);
  }
  html = html.replace("{{categoryItems}}", categoriesHtml);

  /*Boucle pour les profils */
  let profilesHtml = "";
  for (const p of profiles) {
    let pItem = profileItemTemplate.replaceAll("{{id}}", p.id);
    pItem = pItem.replaceAll("{{name}}", p.name);
    pItem = pItem.replaceAll("{{avatar}}", p.avatar);
    profilesHtml += pItem;
  }
  html = html.replace("{{profileItems}}", profilesHtml);

  /*Profil actif */
  let activeName = "Choisir un profil";
  let activeAvatarName = "transparent.png";
  let activeClass = "hidden";

  if (activeProfile && activeProfile.name) {
    activeName = activeProfile.name;
    activeAvatarName = activeProfile.avatar;
    activeClass = "visible";
  }

  html = html.replace("{{activeProfileName}}", activeName);
  html = html.replace("{{activeAvatar}}", activeAvatarName);
  html = html.replace("{{activeClass}}", activeClass);

  return html;
};

export { NavBar };
