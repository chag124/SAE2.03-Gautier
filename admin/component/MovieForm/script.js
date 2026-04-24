let templateFile = await fetch('./component/MovieForm/template.html');
let template = await templateFile.text();

let MovieForm = {};

MovieForm.format = function (categories, handler) {
    let html = template;

    let optionsHtml = "";
    categories.forEach(cat => {
        optionsHtml += `<option value="${cat.id}">${cat.name}</option>`;
    })

    html = html.replace("{{categories_options}}", optionsHtml);
    html = html.replace("{{handler}}", handler);
    return html;
}

export { MovieForm };

