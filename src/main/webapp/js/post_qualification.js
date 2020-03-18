/*
 * Copyright (c) 2020. All rights reserved to Directorate Of accounts and Treasuries, Guwahati.
 * @Author: Pranjal Das
 */
const qualificationObject = (ev) => {
    ev.preventDefault();  //to stop the form submitting
    //This method is to find selected value from radios,such a jugadoo (^_^)


    //personal Details object construction
    let qualification = {};
    //for display in the console
    console.warn('added', {address});

    // var settings = {
    //     "url": "http://localhost:8080/postAddress",
    //     "method": "POST",
    //     "timeout": 0,
    //     "headers": {
    //         "Content-Type": "application/json"
    //     },
    //     "data": JSON.stringify(qualification),
    // };
    // $.ajax(settings).done(function (response) {
    //     console.log(response);
    // });

};
document.addEventListener('DOMContentLoaded', () => {
    document.getElementById('qualification_button').addEventListener('click', qualificationObject);
});
