/*
 * Copyright (c) 2020. All rights reserved to Directorate Of accounts and Treasuries, Guwahati.
 * @Author: Pranjal Das
 */

'use strict';

var photoFileUploadError = document.getElementById('photoFileUploadError');
var photoFileUploadSuccess = document.getElementById('photoFileUploadSuccess');
const photoUploadEv = (ev) => {
    var file = document.getElementById('photo').value;
    console.log(file);
    if (file.length === 0) {
        photoFileUploadError.innerHTML = "Please select a file";
        photoFileUploadError.style.display = "block";
    }
    uploadPhoto(file);
    ev.preventDefault();

    function uploadPhoto(file) {
        var formData = new FormData();
        formData.append("file", file);

        var xhr = new XMLHttpRequest();
        xhr.open("POST", "/uploadFile");

        xhr.onload = function () {
            console.log(xhr.responseText);
            var response = JSON.parse(xhr.responseText);
            if (xhr.status == 200) {
                photoFileUploadError.style.display = "none";
                photoFileUploadSuccess.innerHTML = "<p>File Uploaded Successfully.</p><p>DownloadUrl : <a href='" + response.fileDownloadUri + "' target='_blank'>" + response.fileDownloadUri + "</a></p>";
                photoFileUploadSuccess.style.display = "block";
            } else {
                photoFileUploadSuccess.style.display = "none";
                photoFileUploadError.innerHTML = (response && response.message) || "Some Error Occurred";
            }
        };

        xhr.send(formData);
    }
};
// photoUploadButton.addEventListener('click', function(event){
//     var files = photoFileUploadInput.files;
//     if(files.length === 0) {
//         photoFileUploadError.innerHTML = "Please select a file";
//         photoFileUploadError.style.display = "block";
//     }
//     uploadPhoto(files[0]);
//     event.preventDefault();
// }, true);
document.addEventListener('DOMContentLoaded', () => {
    document.getElementById('photo_upload_btn').addEventListener('click', photoUploadEv);
});