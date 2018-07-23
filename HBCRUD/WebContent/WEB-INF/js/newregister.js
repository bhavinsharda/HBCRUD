/*var regExAlphabetic = /^[a-zA-Z]{2,}$/;
var regExEmail = /^([a-zA-Z0-9_\-\.])+\@([a-zA-Z0-9_\-\.])+\.([a-zA-Z]{2,4})$/;
var regExPassword = /^(?=.*[$@!%*#?&])[\w\d\S]{8,}$/;
var regExNumeric = /^[0-9]+$/;
var regExPhone = /^\+[1][\s][0-9]{3}\-[0-9]{3}\-[0-9]{4}$/;

    registering events call by body onload     
function registerEvents() {
	newUser = document.forms.newUser;
	for (i = 0; i < newUser.length; i++) {
		newUser[i].onblur = validate;
		newUser[i].onkeyup = validate;
	}

}

   general function for blur and onkeyup events  
function validate(event) {
	var isError = true;
	var value = event.target.value;
	switch (event.target.name) {
	case "userName":
		isError = value.length<=3 ? true : false;
		break;

	case "email":
		isError = !validateText(value, regExEmail);
		break;
	case "password":
		isError = !validateText(value, regExPassword);
		break;

	default:
		isError = false;
		return;
	}
	displayError(event.target, isError);
}

 test value against given regex 
function validateText(value, regEx) {
	return regEx.test(value);
}

 general function called on submit events of both forms 
function validateOnSubmit(formName) {
	var isValid = true;
	if (!validateText(newUser.email.value, regExEmail)) {
		isValid = false;
		displayError(newUser.email, !isValid);
	}
	if (!validateText(newUser.password.value, regExPassword)) {
		isValid = false;
		displayError(newUser.password, !isValid);
	}

	if (newUser.userName.value.length<=3) {
		isValid = false;
		displayError(newUser.userName, !isValid);
	}

	return isValid;
}

 to display error on specific field  
function displayError(element, isError) {
	if (isError) {
		addErrorClass(element);
		if (element.nextElementSibling != null) {
			element.nextElementSibling.style.display = "block";
		}
	} else {
		removeErrorClass(element);
		if (element.nextElementSibling != null) {
			element.nextElementSibling.style.display = "none";
		}
	}
}

 assign error class to field 
function addErrorClass(element) {
	var className = element.className;
	if (className.search("error") == -1) {
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
$(document)
		.ready(
				function() {

					var regExAlphabetic = /^[a-zA-Z]{2,}$/;
					var regExEmail = /^([a-zA-Z0-9_\-\.])+\@([a-zA-Z0-9_\-\.])+\.([a-zA-Z]{2,4})$/;
					var regExPassword = /^(?=.*[$@!%*#?&])[\w\d\S]{8,}$/;
					var regExNumeric = /^[0-9]+$/;
					var regExPhone = /^\+[0-9]{2}[\s][0-9]{3}\-[0-9]{3}\-[0-9]{4}$/;
					var isError = true;

					$("#save")
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
					$("#save").on("click", function() {

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

					$("#save").click(function() {
						var email = $("#email").val();
						if (email.match(regExEmail)) {
							$(this).removeClass("error");
							$(".errorEmail").text("");
							return true;
						} else {
							$(this).addClass("error");
							$(".errorEmail").text("Enter Valid Email");
							return false;
						}

					});
					$("#email").blur(function() {
						var email = $("#email").val();
						if (email.match(regExEmail)) {
							$(this).removeClass("error");
							$(".errorEmail").text("");
							return true;
						} else {
							$(this).addClass("error");
							$(".errorEmail").text("Enter Valid Email");
							return false;
						}
					});
					$("#email").keyup(function() {
						var email = $("#email").val();
						if (email.match(regExEmail)) {
							$(this).removeClass("error");
							$(".errorEmail").text("");
							return true;
						} else {
							$(this).addClass("error");
							$(".errorEmail").text("Enter Valid Email");
							return false;
						}
					});
					
					$(".userName").change(function() {
						var xmlhttp = new XMLHttpRequest();
						var userName = $(".userName").val();
						if(userName.length >= 4)
						{
						 xmlhttp.onreadystatechange = function(){
						        if(this.readyState == 4 && this.status == 200){
						            if(this.responseText == "User already exists")
						                {
						             document.getElementById("isExist").innerHTML = this.responseText;
						             }
						            else
						                {
						                document.getElementById("isExist").innerHTML = this.responseText;
						                }
						        }  
						    };
						    xmlhttp.open("GET", "checkExist/"+userName, true);
						    xmlhttp.send();
						}
						else
						 {
						 document.getElementById("isExist").style.display = "none";
						 }
						});
					});
