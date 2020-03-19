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

//list to store all objects
let list = [];

const addressObject = (ev) => {
    ev.preventDefault();  //to stop the form submitting
    //This method is to find selected value from radios,such a jugadoo (^_^)


    //personal Details object construction
    let address = {
        reg_id: "Not Done yet",
        permanent_address: document.getElementById('permanent_address').value,
        permanent_zipcode: document.getElementById('permanent_pin').value,
        permanent_city_town: document.getElementById('permanent_city').value,
        permanent_state: document.getElementById('permanent_state').value,
        permanent_district: document.getElementById('permanent_district').value,

        current_address: document.getElementById('residential_address').value,
        current_zipcode: document.getElementById('residential_pin').value,
        current_city_town: document.getElementById('residential_city').value,
        current_state: document.getElementById('residential_state').value,
        current_district: document.getElementById('residential_district').value,


    };
    //for display in the console
    console.warn('added', {address});
    list.push({address});

    var settings = {
        "url": "http://localhost:8080/postAddress",
        "method": "POST",
        "timeout": 0,
        "headers": {
            "Content-Type": "application/json"
        },
        "data": JSON.stringify(address),
    };
    $.ajax(settings).done(function (response) {
        console.log(response);
    });

};
document.addEventListener('DOMContentLoaded', () => {
    document.getElementById('address_button').addEventListener('click', addressObject);
});


/*
 * Copyright (c) 2020. All rights reserved to Directorate Of accounts and Treasuries, Guwahati.
 * @Author: Pranjal Das
 */
const detailsObject = (ev) => {
    ev.preventDefault();  //to stop the form submitting
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
    list.push({details});
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

/*
 * Copyright (c) 2020. All rights reserved to Directorate Of accounts and Treasuries, Guwahati.
 * @Author: Pranjal Das
 */
const qualificationObject = (ev) => {
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
    let qualification = {
        hslc_year: document.getElementById('hslc_year').value,
        hslc_subjects: document.getElementById('hslc_subjects').value,
        hslc_percentage: document.getElementById('hslc_percentage').value,
        hslc_board: document.getElementById('hslc_board').value,

        hs_year: document.getElementById('hs_year').value,
        hs_subjects: document.getElementById('hs_stream').value,
        hs_percentage: document.getElementById('hs_percentage').value,
        hs_board: document.getElementById('hs_board').value,

        dig_year: document.getElementById('dig_year').value,
        dig_specification: document.getElementById('dig_specification').value,
        dig_percentage: document.getElementById('dig_percentage').value,
        dig_clg_uni: document.getElementById('dig_clg_uni').value,
        diploma_status: findRadioValue(document.getElementsByName('diploma'))

    };
    //for display in the console
    console.warn('added', {qualification});
    list.push({qualification});
    console.warn("All objects are", list);
    var settings = {
        "url": "http://localhost:8080/postQualification",
        "method": "POST",
        "timeout": 0,
        "headers": {
            "Content-Type": "application/json"
        },
        "data": JSON.stringify(qualification),
    };
    $.ajax(settings).done(function (response) {
        console.log(response);
    });

};
document.addEventListener('DOMContentLoaded', () => {
    document.getElementById('qualification_button').addEventListener('click', qualificationObject);
});
