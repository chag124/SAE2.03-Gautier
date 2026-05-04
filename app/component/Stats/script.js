let templateFile = await fetch("./component/Stats/template.html");
let template = await templateFile.text();

let Stats = {};

Stats.format = function (data) {

  let html = template;

  html = html.replace("{{totalProfiles}}", data.total_profiles);
  html = html.replace("{{avgFavorites}}", data.avg_favorites);
  html = html.replace("{{totalMovies}}", data.total_movies);
  html = html.replace("{{topMovie}}", data.most_favorited_movie);
  html = html.replace("{{topCategory}}", data.most_popular_category);

  return html;
};

export { Stats };