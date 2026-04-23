let templateFile = await fetch('./component/MovieForm/template.html');
let template = await templateFile.text();

let MovieForm = {};

MovieForm.format = function () {
    let html = template.replace("{{handler}}", handler);
    return template;
}

export { MovieForm };

