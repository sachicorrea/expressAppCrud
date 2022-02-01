// Password validation

let myInput = document.getElementById('psw');
let letter = document.getElementById('letter');
let capital = document.getElementById('capital');
let number = document.getElementById('number');
let lengthPsw = document.getElementById('lengthPsw');

myInput.onfocus = function () {
    document.getElementById('message-password').style.display = 'block';
}

myInput.onblur = function () {
    document.getElementById('message-password').style.display = 'none';
}

// When the user starts to type something inside the password field
myInput.onkeyup = function () {
    // Validate lower letters
    var lowerCaseLetters = /[a-z]/g;
    if (myInput.value.match(lowerCaseLetters)) {
        letter.classList.remove("invalid");
        letter.classList.add("valid");
    } else {
        letter.classList.remove("valid");
        letter.classList.add("invalid");
    }

    // Validate capital letters
    var upperCaseLetters = /[A-Z]/g;
    if (myInput.value.match(upperCaseLetters)) {
        capital.classList.remove("invalid");
        capital.classList.add("valid");
    } else {
        capital.classList.remove("valid");
        capital.classList.add("invalid");
    }

    // Validate numbers
    var numbers = /[0-9]/g;
    if (myInput.value.match(numbers)) {
        number.classList.remove("invalid");
        number.classList.add("valid");
    } else {
        number.classList.remove("valid");
        number.classList.add("invalid");
    }

    // validate length
    if (myInput.value.length >= 8) {
        lengthPsw.classList.remove("invalid");
        lengthPsw.classList.add("valid");
    } else {
        lengthPsw.classList.remove("valid");
        lengthPsw.classList.add("invalid");
    }
}