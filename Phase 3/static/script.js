var API = "https://api.poweredbyvendify.me";
var auth = "eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCIsImtpZCI6IkV3YjJocTdGT0lmSVVJZHVaWVEyMyJ9.eyJpc3MiOiJodHRwczovL3ZlbmRpZnkudXMuYXV0aDAuY29tLyIsInN1YiI6Imdvb2dsZS1vYXV0aDJ8MTAyNzU0Nzg4NDUwNjk2ODgzNzIyIiwiYXVkIjpbImh0dHBzOi8vdmVuZGlmeS51cy5hdXRoMC5jb20vYXBpL3YyLyIsImh0dHBzOi8vdmVuZGlmeS51cy5hdXRoMC5jb20vdXNlcmluZm8iXSwiaWF0IjoxNjM4OTU3NzQ4LCJleHAiOjE2NDE1NDk3NDgsImF6cCI6IlNPRUU4eG85UWZVbDJ6a1pKdXJUdUZqcFpvMG55TEk5Iiwic2NvcGUiOiJvcGVuaWQgcHJvZmlsZSBlbWFpbCJ9.oJoLCAramq9q-Ypa2tunGoRIIbrFekhbbtLdUpzcvLcI1VaTbABXkxkrhLiGOGzBx5f_9JrTMtgHFkHwmpF5ma4NU0OX8Q9_bxehoDOiuk6fckUUjlCwdNplZ-ZH-qVA4BBygXWcwHZFTkeaImu-bs_yNxv0LUQvg6ySoV5HCrZt3Do5Ecfph2ozr5P76HfRTAjtLsJnSY64QffAF-0EX6-aTRVd7QMwcw1KFUfpfn5WXUHrE1AA2RTnfnuDnJXXWs4Mc2mPYFCKFz6nA7e8kkIrclekQw3NcG2HQi8uLDtFCoIOGeEfRb9ZeQ4MSY9cx0sjQrkX3dU742X9fAyUqQ";
var certificate = "qA5QVwffAyQ5QE)ffEnspQR)zP50gjXpITrQHgwFUjWZk0cjMyfnz1y8Tgr9iUOV7bwUOCrIMz4I0MH3C(nbTCALtJgb5taVSL7qS3WpwFM=";
let machineKey = document.getElementById("machineKey").value

// SERIAL MANAGEMENT ------------------------------------------------------------------

function checkSerial() {
    let request = new XMLHttpRequest();
    request.open("GET", API + "/checkSerial?serialCertificate=" + certificate);
    request.send();
    request.onload = () => {
        let data = JSON.parse(request.response);
        let keys = Object.keys(data);
        document.getElementById("getSerial").innerHTML = data[keys];
        console.log(data)
    }
}

// ITEM MANAGEMENT ------------------------------------------------------------------

function getItems() {
    let request = new XMLHttpRequest();
    let ping = false;

    request.open("GET", API + "/getItems?machinekey=" + machineKey);
    request.send();
    request.onload = () => {
        let data = JSON.parse(request.response);
        let keys = Object.keys(data);

        let i = 0;
        while (i < keys.length) {
            if (keys[i] == name) {
                document.getElementById("searchGrade").value = data[keys[i]];
                ping = true;
            }
            i++;
        }
        if (ping == false) {
            document.getElementById("searchGrade").value = "Name could not be found";
        }
    }
}

function incrementStock() {
    let name = document.getElementById("name2").value;
    let grade = document.getElementById("grade2").value;
    let param =
    {
        "name": name,
        "grade": grade
    };
    let request = new XMLHttpRequest();
    request.open("POST", API + "/grades", true);
    request.setRequestHeader("Content-Type", "application/json");
    let json_data = JSON.stringify(param);
    request.send(json_data);
    document.getElementById("record").innerHTML = "Record includeStudented";
}

function decrementStock() {
    let name = document.getElementById("name4").value;

    let request = new XMLHttpRequest();
    request.open("DELETE", API + "/grades" + "/" + name, true);
    request.setRequestHeader("Content-Type", "application/json");
    request.send();

    document.getElementById("delete").innerHTML = "Record deleted";
}

// USER MANAGEMENT ------------------------------------------------------------------

function edit() {
    let name = document.getElementById("name3").value;
    let grade = document.getElementById("grade3").value;
    let param =
    {
        "grade": grade
    };
    let request = new XMLHttpRequest();

    request.open("PUT", API + "/grades" + "/" + name, true);
    request.setRequestHeader("Content-Type", "application/json");

    let json_data = JSON.stringify(param);
    request.send(json_data);
    document.getElementById("delete").innerHTML = "Grade edited";
}

function generateNewUser() {
    let name = document.getElementById("name2").value;
    let grade = document.getElementById("grade2").value;
    let param =
    {
        "name": name,
        "grade": grade
    };
    let request = new XMLHttpRequest();
    request.open("POST", API + "/grades", true);
    request.setRequestHeader("Content-Type", "application/json");
    let json_data = JSON.stringify(param);
    request.send(json_data);
    document.getElementById("record").innerHTML = "Record includeStudented";
}

function removeValidUser() {
    let request = new XMLHttpRequest();
    let machineKey = document.getElementById("machineKey").value;
    request.open("DELETE", API + "/grades" + "/" + name, true);
    request.setRequestHeader("Content-Type", "application/json");
    request.send();

    document.getElementById("delete").innerHTML = "Record deleted";
}



function get() {
    let name = document.getElementById("name").value;
    let request = new XMLHttpRequest();
    let ping = false;

    request.open("GET", API + "/grades");
    request.send();
    request.onload = () => {
        let data = JSON.parse(request.response);
        let keys = Object.keys(data);

        let i = 0;
        while (i < keys.length) {
            if (keys[i] == name) {
                document.getElementById("searchGrade").value = data[keys[i]];
                ping = true;
            }
            i++;
        }
        if (ping == false) {
            document.getElementById("searchGrade").value = "Name could not be found";
        }
    }
}