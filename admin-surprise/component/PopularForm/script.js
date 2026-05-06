let templateFile = await fetch('./component/PopularForm/template.html');
let template = await templateFile.text();

let itemFile = await fetch('./component/PopularForm/item.html');
let itemTemplate = await itemFile.text();

let PopularForm = {};

PopularForm.format = function (movies) {
    let itemsHtml = "";

    if (movies && Array.isArray(movies)) {
        for (let m of movies) {
            let tmp = itemTemplate.replaceAll("{{id}}", m.id);
            tmp = tmp.replaceAll("{{name}}", m.name);
            tmp = tmp.replaceAll("{{category_name}}", m.category_name);
            tmp = tmp.replaceAll("{{year}}", m.year);

            let checkedValue = "";
            if (m.popular == 1) {
                checkedValue = "checked";
            }
            tmp = tmp.replaceAll("{{checked}}", checkedValue);

            itemsHtml = itemsHtml + tmp;
        }
    }
    let finalHtml = template.replace("{{items}}", itemsHtml);

    return finalHtml;
}

PopularForm.formatList = function (movies) {
    let itemsHtml = "";
    if (movies && Array.isArray(movies)) {
        for (let m of movies) {
            let tmp = itemTemplate.replaceAll("{{id}}", m.id);
            tmp = tmp.replaceAll("{{name}}", m.name);
            tmp = tmp.replaceAll("{{category_name}}", m.category_name);
            tmp = tmp.replaceAll("{{year}}", m.year);

            let checkedValue = (m.popular == 1) ? "checked" : "";
            tmp = tmp.replaceAll("{{checked}}", checkedValue);

            itemsHtml += tmp;
        }
    }
    return itemsHtml;
}

export { PopularForm };