document.addEventListener("DOMContentLoaded", function (event) {
    //código a ejecutar cuando el DOM está listo para recibir acciones
    let classPost = document.getElementById("function_class");
    let classPostSelect = classPost.dataset.parent_id;


    Array.from(classPost.options).forEach((classElement) => {
        let option_text = classElement.text;
        let option_value = classElement.value;

        if (option_value == classPostSelect) {
            classElement.setAttribute("selected", true);
        }
    });
});

/*
document.addEventListener("DOMContentLoaded", function (event) {
    let x = window.matchMedia("(min-width: 768px)");

    if (x.matches) {
        document.getElementById("sidenav").style.width = "160px";
    } else {
        document.getElementById("sidenav").style.width = "100%";
    }
});
*/

function openNav(x) {
    if (x.matches) {
        document.getElementById("sidenav").style.width = "100%";
    } else {
        document.getElementById("sidenav").style.width = "160px";
    }
}

var x = window.matchMedia("(max-width: 768px)");
openNav(x);
x.addEventListener(openNav);