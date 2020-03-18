/*
 * Copyright (c) 2020. All rights reserved to Directorate Of accounts and Treasuries, Guwahati.
 * @Author: Pranjal Das
 */
const detailsObject = (ev) => {
    ev.preventDefault();  //to stop the form submitting
    //This method is to find selected value from radios,such a jugadoo (^_^)
    function findRadioValue(radios) {
        var value;
        for (let i = 0; i < radios.length; i++) {
            if (radios[i].checked)
                value = radios[i].value;
        }
        return value;
    }

    //personal Details object construction
    let details = {
        reg_id: "Not Done yet",
        fname: document.getElementById('fname').value,
        mname: document.getElementById('mname').value,
        lname: document.getElementById('lname').value,
        mother: document.getElementById('mother').value,
        father: document.getElementById('father').value,
        religion: document.getElementById('religion').value,
        category: document.getElementById('category').value,
        gender: findRadioValue(document.getElementsByName('gender')),
        disability_status: findRadioValue(document.getElementsByName('disability_status')),
        marital_status: findRadioValue(document.getElementsByName('marital_status')),
        prc_status: findRadioValue(document.getElementsByName('prc_status')),
        currently_working_status: findRadioValue(document.getElementsByName('currently_working_status')),
        nationality: document.getElementById('nationality').value
    };
    //for display in the console
    console.warn('added', {details});

    var settings = {
        "url": "http://localhost:8080/postDetails",
        "method": "POST",
        "timeout": 0,
        "headers": {
            "Content-Type": "application/json"
        },
        "data": JSON.stringify(details),
    };
    $.ajax(settings).done(function (response) {
        console.log(response);
    });

};
document.addEventListener('DOMContentLoaded', () => {
    document.getElementById('details_button').addEventListener('click', detailsObject);
});
