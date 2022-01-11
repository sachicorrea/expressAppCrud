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