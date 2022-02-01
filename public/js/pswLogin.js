// Password validation in login form

const passwordLogin = document.querySelector("#pswLogin")
const tooglePswLogin = document.querySelector("#tooglePswLogin");

tooglePswLogin.addEventListener('click', function (e) {
    const type = passwordLogin.getAttribute('type') === 'password' ? "text" : "password";
    passwordLogin.setAttribute("type", type);
});