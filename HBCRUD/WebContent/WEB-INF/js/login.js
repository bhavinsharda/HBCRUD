/*function registerEvents() {
	login = document.forms.login;
    for(i = 0; i<login.length; i++) {
    	login[i].onblur = validate;
    	login[i].onkeyup = validate; 
    }
   
}

function validate(event) {
    var isError = true;
    var value = event.target.value;
    switch(event.target.name) {
    case "userName":
        isError = value==""? true: false;
        break;
    case "password":
        isError = value==""? true: false;
        break;
        default:
            isError = false;
            return;
    }
    displayError(event.target, isError);
}


function validateOnSubmit(formName) {
    var isValid = true;
    
    if(login.userName.value == "") {
        isValid = false;
        displayError(login.userName, !isValid);
    }
    if(login.password.value == "") {
        isValid = false;
        displayError(login.password, !isValid);
    }
    return isValid;
}
function displayError(element, isError) {
    if(isError) {
        addErrorClass(element);
        if(element.nextElementSibling != null) {
            element.nextElementSibling.style.display = "block";
        }
    }else {
        removeErrorClass(element);
        if(element.nextElementSibling != null) {
            element.nextElementSibling.style.display = "none";
        }
    }
}


 assign error class to fiels 
function addErrorClass(element) {
    var className = element.className;
    if(className.search("error") == -1) {
        element.className = (element.className + " error").trim();
    }
}


 remove error class from field  
function removeErrorClass(element) {
    var className = element.className;
    className = className.replace("error", "").trim();
    element.className = className;
}
*/
$(document).ready(function(){
	
	var regExAlphabetic = /^[a-zA-Z]{2,}$/;
	var regExEmail = /^([a-zA-Z0-9_\-\.])+\@([a-zA-Z0-9_\-\.])+\.([a-zA-Z]{2,4})$/;
	var regExPassword = /^(?=.*[$@!%*#?&])[\w\d\S]{8,}$/;
	var regExNumeric = /^[0-9]+$/;
	var regExPhone = /^\+[0-9]{2}[\s][0-9]{3}\-[0-9]{3}\-[0-9]{4}$/;
	  var isError = true;
	
	

					$("#login")
							.on(
									"click",
									function() {

										var userName = $("#userName").val();
										if (userName.length < 4) {
											$(this).addClass("error");
											$(".errorUserName")
													.text(
															"User Name should be more than 3 character");
											return false;
										} else {
											$(this).removeClass("error");
											$(".errorUserName").text("");
											return true;
										}

									});
					$("#userName")
							.on(
									"blur",
									function() {
										var userName = $("#userName").val();
										if (userName.length < 4) {
											$(this).addClass("error");
											$(".errorUserName")
													.text(
															"User Name should be more than 3 character");
											return false;
										} else {
											$(this).removeClass("error");
											$(".errorUserName").text("");
											return true;
										}
									});
					$("#userName")
							.on(
									"keyup",
									function() {
										var userName = $("#userName").val();
										if (username.length < 4) {
											$(this).addClass("error");
											$(".errorUserName")
													.text(
															"User Name should be more than 3 character");
											return false;
										} else {
											$(this).removeClass("error");
											$(".errorUserName").text("");
											return true;
										}

									});
					$("#login").on("click", function() {

						var password = $("#password").val();
						if (password.length < 8) {
							$(this).addClass("error");
							$(".errorPassowrd").text("Enter Your Password");
							return false;
						} else {
							$(this).removeClass("error");
							$(".errorPassowrd").text("");
							return true;
						}

					});
					$("#password").on("blur", function() {
						var password = $("#password").val();
						if (password.length < 8) {
							$(this).addClass("error");
							$(".errorPassowrd").text("Enter Your Password");
							return false;
						} else {
							$(this).removeClass("error");
							$(".errorPassowrd").text("");
							return true;
						}
					});
					$("#password").on("keyup", function() {
						var password = $("#password").val();
						if (password.length < 8) {
							$(this).addClass("error");
							$(".errorPassowrd").text("Enter Your Password");
							return false;
						} else {
							$(this).removeClass("error");
							$(".errorPassowrd").text("");
							return true;
						}
					});

					
});
