/*
 * Copyright (c) 2020. All rights reserved to Directorate Of accounts and Treasuries, Guwahati.
 * @Author: Pranjal Das
 */
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