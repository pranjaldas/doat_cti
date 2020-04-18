/*
 * Copyright (c) 2020. All rights reserved to Directorate Of accounts and Treasuries, Guwahati.
 * @Author: Pranjal Das
 */

//This method is to find selected value from radios,such a jugadoo (^_^)

	function findRadioValue(radios) {
	    var value;
	    for (let i = 0; i < radios.length; i++) {
	        if (radios[i].checked)
	            value = radios[i].value;
	    }
	    return value;
	}

	const registrationObject = (ev) => {
	    ev.preventDefault();  //to stop the form submitting
	    //personal Details object construction
	    let registration = {
	        reg_id: "newReg",
	        name: document.getElementById('fname').value,
	        department_no: document.getElementById('dept_name').value,
	        employee_no: document.getElementById('empid').value,
	        email: document.getElementById('email').value,
	        phone: document.getElementById('phone').value,
	        password: document.getElementById('psw').value,
	        
	    };
	    //for display in the console
	    console.warn('Registration Object', {registration});

	    var settings = {
	        "url": "http://localhost:8080/postRegistration",
	        "method": "POST",
	        "timeout": 0,
	        "headers": {
	            "Content-Type": "application/json"
	        },
	        "data": JSON.stringify(registration),
	    };
	     $.ajax(settings).done(function (response) {
	         console.log(response);
	         if(response.status=="success"){
	        	 alert("Registered");
	         };
	     });

	};
	document.addEventListener('DOMContentLoaded', () => {
	    document.getElementById('register').addEventListener('click', registrationObject);
	});









