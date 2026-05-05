let templateFile = await fetch('./component/ProfileList/template.html');
let template = await templateFile.text();

let itemFile = await fetch('./component/ProfileList/item.html');
let itemTemplate = await itemFile.text();

let ProfileList = {};

ProfileList.format = function (profiles) {
    let itemsHtml = "";
    for (let p of profiles) {
        let tmp = itemTemplate.replaceAll("{{id}}", p.id);
        tmp = tmp.replaceAll("{{name}}", p.name);
        tmp = tmp.replaceAll("{{age}}", p.age_restriction);
        itemsHtml += tmp;
    }
    return template.replace("{{items}}", itemsHtml);
}

export { ProfileList };

