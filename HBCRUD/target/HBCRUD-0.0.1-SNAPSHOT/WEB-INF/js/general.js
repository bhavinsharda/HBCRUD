	
	/*var regExAlphabetic = /^[a-zA-Z]{2,}$/;
	var regExEmail = /^([a-zA-Z0-9_\-\.])+\@([a-zA-Z0-9_\-\.])+\.([a-zA-Z]{2,4})$/;
	var regExPassword = /^(?=.*[$@!%*#?&])[\w\d\S]{8,}$/;
	var regExNumeric = /^[0-9]+$/;
	var regExPhone = /^\+[0-9]{2}[\s][0-9]{3}\-[0-9]{3}\-[0-9]{4}$/;
	
	    registering events call by body onload     
	function registerEvents() {
		registration = document.forms.registration;
	    for(i = 0; i<registration.length; i++) {
	    	registration[i].onblur = validate;
	    	registration[i].onkeyup = validate;
	    	
	    }
	    
	}
	
	
	   general function for blur and onkeyup events  
	function validate(event) {
	    var isError = true;
	    var value = event.target.value;
	    switch(event.target.name) {
	    	case "firstName":
		        isError = !validateText(value, regExAlphabetic);
		        break;
	    	case "lastName":
		        isError = !validateText(value, regExAlphabetic);
		        break;
	        case "email":
	            isError = !validateText(value, regExEmail);
	            break;
	        case "password":
	            isError = !validateText(value, regExPassword);
	            break;
	        case "phoneNo":
	            isError = !validateText(value, regExPhone);
	            break;
	        
	             case "address":
	            isError = value==""? true: false;
	            break; 
	        case "country":
	            isError = value=="-1"? true: false;
	            break;
	        case "state":
	            isError = value=="-1"? true: false;
	            break;
	        case "city":
	            isError = value=="-1"? true: false;
	            break;
	      
	        case "mob_num":
	            isError = !validateText(value, regExPhone);
	            break;
	        case "birthDate":
	            isError = validateDate(value);
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
	
	
	 test for date value by making date object and check if it is valid date 
	function validateDate(value) {
	    var birthDate = new Date(value);
	    var dateArray = value.split("-");
	    if(birthDate.getDate() == dateArray[2] && (birthDate.getMonth()+1) == dateArray[1] && birthDate.getFullYear() == dateArray[0]) {
	        return false;
	    }
	    else {
	        return true;
	    }
	}
	
	function validateHobby()
	{
	var group = document.registration.hobby;
	for (var i=0; i<group.length; i++) {
	if (group[i].checked)
	return false;
	}
	if (i==group.length)
	alert("No Checkbox is checked");
	//alert("checkbox Button " + (i+1) + " is checked.");
	return true;
	}
	
	 general function called on submit events of both forms 
	function validateOnSubmit(formName) {
	    var isValid = true;
	           debugger;
	            if(!validateText(registration.firstName.value, regExAlphabetic)) {
	                isValid = false;
	                displayError(registration.firstName, !isValid);
	            }
	            if(!validateText(registration.lastName.value, regExAlphabetic)) {
	                isValid = false;
	                displayError(registration.lastName, !isValid);
	            }
	            
	            if(!validateText(registration.phoneNo.value, regExPhone)) {
	                isValid = false;
	                displayError(registration.phoneNo, !isValid);
	            }
	            if(validateDate(registration.birthDate.value)) {
	                isValid = false;
	                displayError(registration.birthDate, !isValid);
	            }
	            if(validateHobby()) {
	            	isValid = false;
	            }
	            if(registration.country.value == "-1") {
	                isValid = false;
	                displayError(registration.country, !isValid);
	            }
	            if(registration.state.value == "-1") {
	                isValid = false;
	                displayError(registration.state, !isValid);
	            }
	            if(registration.city.value == "-1") {
	                isValid = false;
	                displayError(registration.city, !isValid);
	            }
	            
	           
	    return isValid;
	}
	
	 to display error on specific field  
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
	
	
	 assign error class to fields 
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
	

	$(document)
		.ready(
				function() {
					debugger;

					var regExAlphabetic = /^[a-zA-Z]{2,}$/;
					var regExEmail = /^([a-zA-Z0-9_\-\.])+\@([a-zA-Z0-9_\-\.])+\.([a-zA-Z]{2,4})$/;
					var regExPassword = /^(?=.*[$@!%*#?&])[\w\d\S]{8,}$/;
					var regExNumeric = /^[0-9]+$/;
					var regExPhone = /^\+[0-9]{2}[\s][0-9]{3}\-[0-9]{3}\-[0-9]{4}$/;
					var isError = true;

					$("#submit").on("click", function() {

						var regExAlphabetic = /^[a-zA-Z]{2,}$/;
						var fname = $("#fname").val();
						if (fname.match(regExAlphabetic)) {
							$(this).removeClass("error");
							$(".errorFname").text("");
						} else {
							$(this).addClass("error");
							$(".errorFname").text("Enter Valid Firstname");
							return false;
						}

					});
					
					$("#fname").on("blur", function() {
						var regExAlphabetic = /^[a-zA-Z]{2,}$/;
						var fname = $("#fname").val();
						if (fname.match(regExAlphabetic)) {
							$(this).removeClass("error");
							$(".errorFname").text("");
							return true;
						} else {
							$(this).addClass("error");
							$(".errorFname").text("Enter Valid Firstname");
							return false;
						}
					});
					
					$("#fname").on("keyup", function() {
						var regExAlphabetic = /^[a-zA-Z]{2,}$/;
						var fname = $("#fname").val();
						if (fname.match(regExAlphabetic)) {
							$(this).removeClass("error");
							$(".errorFname").text("");
							return true;
						} else {
							$(this).addClass("error");
							$(".errorFname").text("Enter Valid Firstname");
							return false;
						}

					});

					$("#submit").on("click", function() {
						var regExAlphabetic = /^[a-zA-Z]{2,}$/;
						var lname = $("#lname").val();
						if (lname.match(regExAlphabetic)) {
							$(this).removeClass("error");
							$(".errorLname").text("");
							return true;
						} else {
							$(this).addClass("error");
							$(".errorLname").text("Enter Valid Lastname");
							return false;
						}

					});
					
					$("#lname").on("blur", function() {

						var regExAlphabetic = /^[a-zA-Z]{2,}$/;
						var lname = $("#lname").val();
						if (lname.match(regExAlphabetic)) {
							$(this).removeClass("error");
							$(".errorLname").text("");
							return true;
						} else {
							$(this).addClass("error");
							$(".errorLname").text("Enter Valid Lastname");
							return false;
						}

					});
					
					$("#lname").on("keyup", function() {
						var regExAlphabetic = /^[a-zA-Z]{2,}$/;
						var lname = $("#lname").val();
						if (lname.match(regExAlphabetic)) {
							$(this).removeClass("error");
							$(".errorLname").text("");
							return true;
						} else {
							$(this).addClass("error");
							$(".errorLname").text("Enter Valid Lastname");
							return false;
						}

					});
					
					/*$("#submit").on("click",function() {
						var bdate = $("#bdate").val();
						var birthDate = new Date(bdate);
						var dateArray = bdate.split("-");
						if (birthDate.getDate() == dateArray[2]
							&& (birthDate.getMonth() + 1) == dateArray[1]
							&& birthDate.getFullYear() == dateArray[0])
						     {
							$(this).removeClass("error");
							$(".errorBdate").text("");
						     } 
						
						else {
							$(this).addClass("error");
							$(".errorBdate").text("Date must be in yyyy-mm-dd format");
							return false;
						     }

							});
					
					$("#bdate").on("blur",function() {
						var bdate = $("#bdate").val();
						var birthDate = new Date(bdate);
						var dateArray = bdate.split("-");
						if (birthDate.getDate() == dateArray[2]
							&& (birthDate.getMonth() + 1) == dateArray[1]
							&& birthDate.getFullYear() == dateArray[0])
						     {
							$(this).removeClass("error");
							$(".errorBdate").text("");
						     } 
						
						else {
							$(this).addClass("error");
							$(".errorBdate").text("Date must be in yyyy-mm-dd format");
							return false;
						     }

							});
					
					$("#bdate").on("keyup",function() {
						var bdate = $("#bdate").val();
						var birthDate = new Date(bdate);
						var dateArray = bdate.split("-");
						if (birthDate.getDate() == dateArray[2]
							&& (birthDate.getMonth() + 1) == dateArray[1]
							&& birthDate.getFullYear() == dateArray[0])
						     {
							$(this).removeClass("error");
							$(".errorBdate").text("");
						     } 
						
						else {
							$(this).addClass("error");
							$(".errorBdate").text("Date must be in yyyy-mm-dd format");
							return false;
						     }

							});*/
					
					$("#submit").on("click",function() {
						  var regExPhone = /^\+[0-9]{2}[\s][0-9]{3}\-[0-9]{3}\-[0-9]{4}$/;
						  var mobile = $("#phone").val();
						  if (mobile.match(regExPhone))
						  {
							$(this).removeClass("error");
							$(".errorMobile").text("");
							return true;
						  }
                         else 
                         {
							$(this).addClass("error");
							$(".errorMobile").text("Enter Valid Mobile Number. Ex:- +12 123-123-1234");
							return false;
						 }

						});
					
					$("#phone").on("blur",function() {
						 var regExPhone = /^\+[0-9]{2}[\s][0-9]{3}\-[0-9]{3}\-[0-9]{4}$/;
						  var mobile = $("#phone").val();
						  if (mobile.match(regExPhone))
						  {
							$(this).removeClass("error");
							$(".errorMobile").text("");
						  }
                        else 
                        {
							$(this).addClass("error");
							$(".errorMobile").text("Enter Valid Mobile Number. Ex:- +12 123-123-1234");
							return false;
						 }

						});
					$("#phone").on("keyup",function() {
						 var regExPhone = /^\+[0-9]{2}[\s][0-9]{3}\-[0-9]{3}\-[0-9]{4}$/;
						  var mobile = $("#phone").val();
						  if (mobile.match(regExPhone))
						  {
							$(this).removeClass("error");
							$(".errorMobile").text("");
						  }
                        else 
                        {
							$(this).addClass("error");
							$(".errorMobile").text("Enter Valid Mobile Number. Ex:- +12 123-123-1234");
							return false;
						 }

						});
					
					/*$("#submit").on("click", function() {
						var allgroup = $('input[name="hobby"]');
						debugger;
						for (var i = 0; i < allgroup.length; i++) {
							if (allgroup[i].checked)

								break;

						}
						if (i == allgroup.length) {
							alert("No Checkbox is checked");
							return false;
						} else {

							return true;
						}

					   });*/
					
				/*	$(".submit").on("click", function() {
						var country = $("#Country").val();
						if (country == "-1") {
							$(this).addClass("error");
							$(".errorCountry").text("Select Country");
							return false;
						} else {
							$(this).removeClass("error");
							$(".errorCountry").text("");
							return true;
						}

					   });
					
					$("#Country").on("blur", function() {
						var country = $("#Country").val();
						if (country == "-1") {
							$(this).addClass("error");
							$(".errorCountry").text("Select Country");
							return false;
						} else {
							$(this).removeClass("error");
							$(".errorCountry").text("");
							return true;
						}

					   });
					
					$("#Country").on("keyup", function() {
						var country = $("#Country").val();
						if (country == "-1") {
							$(this).addClass("error");
							$(".errorCountry").text("Select Country");
							return false;
						} else {
							$(this).removeClass("error");
							$(".errorCountry").text("");
							return true;
						}
					   });

					$("#submit").on("click", function() {
						var state = $("#State").val();
						if (state == "-1") {
							$(this).addClass("error");
							$(".errorState").text("Select State");
							return false;
						} else {
							$(this).removeClass("error");
							$(".errorState").text("");
							return true;
						}

					    });
					$("#State").on("blur", function() {
						var state = $("#State").val();
						if (state == "-1") {
							$(this).addClass("error");
							$(".errorState").text("Select State");
							return false;
						} else {
							$(this).removeClass("error");
							$(".errorState").text("");
							return true;
						}

					    });
					$("#State").on("keyup", function() {
						var state = $("#State").val();
						if (state == "-1") {
							$(this).addClass("error");
							$(".errorState").text("Select State");
							return false;
						} else {
							$(this).removeClass("error");
							$(".errorState").text("");
							return true;
						}
					   });

					$("#submit").on("click", function() {
						var city = $("#City").val();
						if (city == "-1") {
							$(this).addClass("error");
							$(".errorCity").text("Select City");
							return false;
						} else {
							$(this).removeClass("error");
							$(".errorCity").text("");
							return true;
						}

					   });
					$("#City").on("blur", function() {
						var city = $("#City").val();
						if (city == "-1") {
							$(this).addClass("error");
							$(".errorCity").text("Select City");
							return false;
						} else {
							$(this).removeClass("error");
							$(".errorCity").text("");
							return true;
						}

					    });
					$("#City").on("keyup", function() {
						var city = $("#City").val();
						if (city == "-1") {
							$(this).addClass("error");
							$(".errorCity").text("Select City");
							return false;
						} else {
							$(this).removeClass("error");
							$(".errorCity").text("");
							return true;
						}
					   });*/

					$("#submit").on("click", function() {
						var regExNumeric = /^[0-9]+$/;
						var salary = $("#salary").val();
						if (salary.match(regExNumeric)) {
							$(this).removeClass("error");
							$(".errorSalary").text("");
							return true;
						} else {
							$(this).addClass("error");
							$(".errorSalary").text("Enter Valid Salary");
							return false;
						}

					});
					
					$("#salary").on("blur", function() {

						var regExNumeric = /^[0-9]+$/;
						var salary = $("#salary").val();
						if (salary.match(regExNumeric)) {
							$(this).removeClass("error");
							$(".errorSalary").text("");
							return true;
						} else {
							$(this).addClass("error");
							$(".errorSalary").text("Enter Valid Salary");
							return false;
						}
					});
					
					$("#salary").on("keyup", function() {
						var regExNumeric = /^[0-9]+$/;
						var salary = $("#salary").val();
						if (salary.match(regExNumeric)) {
							$(this).removeClass("error");
							$(".errorSalary").text("");
							return true;
						} else {
							$(this).addClass("error");
							$(".errorSalary").text("Enter Valid Salary");
							return false;
						}

					});
					$("#submit").on("click", function() {
						var regExAlphabetic = /^[a-zA-Z]{2,}$/;
						var designation = $("#designation").val();
						if (designation.match(regExAlphabetic)) {
							$(this).removeClass("error");
							$(".errorDesignation").text("");
							return true;
						} else {
							$(this).addClass("error");
							$(".errorDesignation").text("Enter Valid Designation");
							return false;
						}

					});
					
					$("#designation").on("blur", function() {

						var regExAlphabetic = /^[a-zA-Z]{2,}$/;
						var designation = $("#designation").val();
						if (designation.match(regExAlphabetic)) {
							$(this).removeClass("error");
							$(".errorDesignation").text("");
							return true;
						} else {
							$(this).addClass("error");
							$(".errorDesignation").text("Enter Valid Designation");
							return false;
						}
					});
					
					$("#designation").on("keyup", function() {
						var regExAlphabetic = /^[a-zA-Z]{2,}$/;
						var designation = $("#designation").val();
						if (designation.match(regExAlphabetic)) {
							$(this).removeClass("error");
							$(".errorDesignation").text("");
							return true;
						} else {
							$(this).addClass("error");
							$(".errorDesignation").text("Enter Valid Designation");
							return false;
						}

					});
					

				});
	