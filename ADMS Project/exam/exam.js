"user strict";
          function naming() {
            var userInput = document.getElementById("pname").innerHTML = prompt("Please enter your name!");
                if (userInput === "") {
                    alert("Please enter your name!");
                    document.getElementById("pname").innerHTML = prompt("Your Name -_-");
                }
            var age = document.getElementById("page").innerHTML = parseInt(prompt("your age!"));
            var place = document.getElementById("pplace").innerHTML = prompt("Your location!");
                if (place === "") {
                    document.getElementById("pplace").innerHTML = "Unknown";
                }
            }
        document.getElementById('quest-f').addEventListener('submit', estimateFormResult);
function estimateFormResult(event) {
    event.preventDefault();

    
    var gala = parseInt(document.getElementById("galaxy").value, 10) || 0,
        tiToMa = parseInt(document.getElementById("time_to_mars").value, 10) || 0,
        massMarEar = parseInt(document.getElementById("mass-earth-mars").value, 10) || 0,
        mat1 = parseInt(document.getElementById("math_1").value, 10) || 0,
        mat2 = parseInt(document.getElementById("math_2").value, 10) || 0,
        facBoo = parseInt(document.getElementById("f_b").value, 10) || 0,
        metho1,
        metho2,
        method1 = document.getElementById("quest-f").Q_countries,
        questionCountries,
        method2 = document.getElementById("quest-f").Q_cities,
        questionCities,
        method3 = document.getElementById("quest-f").Q_pixels,
        questionPixels,
        method4 = document.getElementById("quest-f").Q_planets,
        questionPlanets,
        method5 = document.getElementById("quest-f").Q_earth,
        questionEarth,
        method6 = document.getElementById("quest-f").Q_mars,
        questionMars,
        method7 = document.getElementById("quest-f").Q_planet_earth,
        questionPlanetEarth,
        method8 = document.getElementById("quest-f").Q_pop_world,
        questionPopWorld,
        method9 = document.getElementById("quest-f").Q_l_cities,
        questionLcities,
        method10 = document.getElementById("quest-f").Q_o_city,
        questionOcity,
        method11 = document.getElementById("quest-f").Q_balloun,
        questionBalloun,
        method12 = document.getElementById("quest-f").Q_lang,
        questionLang,
        method13 = document.getElementById("quest-f").Q_football_1,
        questionFootball1,
        method14 = document.getElementById("quest-f").Q_football_2,
        questionFootball2;
        
    for (var x = 0; x < method1.length; x++) {
        if (method1[x].checked == true) {
            questionCountries = parseInt(method1.value);
        } else if (questionCountries == undefined) {
            questionCountries = 0;
        }
    } 
    for (var z = 0; z < method2.length; z++ ) {
        if (method2[z].checked == true) {
            questionCities = parseInt(method2.value);
        } else if (questionCities == undefined) {
            questionCities = 0;
        }
    }
    for (var d = 0; d < method3.length; d++) {
        if (method3[d].checked == true) {
            questionPixels = parseInt(method3.value);
        } else if (questionPixels == undefined) {
            questionPixels = 0;
        }
    }
    for (var s = 0; s < method4.length; s++) {
        if (method4[s].checked == true) {
            questionPlanets = parseInt(method4.value);
        } else if (questionPlanets == undefined) {
            questionPlanets = 0;
        }
    }
    for (var a = 0; a < method5.length; a++) {
        if (method5[a].checked == true) {
            questionEarth = parseInt(method5.value);
        } else if (questionEarth == undefined) {
            questionEarth = 0;
        }
    }
    for (var i = 0; i < method6.length; i++) {
        if (method6[i].checked == true) {
            questionMars = parseInt(method6.value);
        } else if (questionMars == undefined) {
            questionMars = 0;
        }
    }
    for (var o = 0; o < method7.length; o++) {
        if (method7[o].checked == true) {
            questionPlanetEarth = parseInt(method7.value);
        } else if (questionPlanetEarth == undefined) {
            questionPlanetEarth = 0;
        }
    }
    for (var t = 0; t < method8.length; t++) {
        if (method8[t].checked == true) {
            questionPopWorld = parseInt(method8.value);
        } else if (questionPopWorld == undefined) {
            questionPopWorld = 0;
        }
    }
    for (var e = 0; e < method9.length; e++) {
        if  (method9[e].checked == true) {
            questionLcities = parseInt(method9.value);
        } else if (questionLcities == undefined) {
            questionLcities = 0;
        }
    }
    for (var w = 0; w < method10.length; w++) {
        if (method10[w].checked == true) {
            questionOcity = parseInt(method10.value);
        } else if (questionOcity == undefined) {
            questionOcity = 0;
        }
    }
    for (var q = 0; q < method11.length; q++) {
        if (method11[q].checked == true) {
            questionBalloun = parseInt(method11.value);
        } else if (questionBalloun == undefined) {
            questionBalloun = 0;
        }
    }
    for (var u = 0; u < method12.length; u++) {
        if (method12[u].checked == true) {
            questionLang = parseInt(method12.value);
        } else if (questionLang == undefined) {
            questionLang = 0;
        }
    }
    for (var m = 0; m < method13.length; m++) {
        if (method13[m].checked == true) {
            questionFootball1 = parseInt(method13.value);
        } else if (questionFootball1 == undefined) {
            questionFootball1 = 0;
        }
    }
    for (var n = 0; n < method14.length; n++) {
        if (method14[n].checked == true) {
         questionFootball2 = parseInt(method14.value);   
        } else if (questionFootball2 == undefined) {
            questionFootball2 = 0;
        }
    }
    if ( mat1 === 3.0) {
        metho1 = 5;
    } else {
        metho1 = 0;
    } 
    if (mat2 === 4.0) {
        metho2 = 5;
    } else {
        metho2 = 0;
    }
    
   var estimate = parseInt(gala + tiToMa + massMarEar + metho1 + metho2 + facBoo + questionCountries + questionCities + questionPixels + questionPlanets + questionEarth + questionMars + questionPlanetEarth + questionPopWorld + questionLcities + questionOcity + questionBalloun + questionLang + questionFootball1 + questionFootball2); 
    
    document.getElementById("cong").innerHTML = "Your Score";
    document.getElementById("degr").innerHTML = estimate + " %";
    document.getElementById("name").style = "transform: translateX(0%);";
    document.getElementById("age").style = "transform: translateX(0%); transition-delay: 0.2s";
    document.getElementById("place").style = "transform: translateX(0%); transition-delay: 0.4s";
    document.getElementById("cong").style = "transform: scale(1,1); transition-delay: 0.2s";
    document.getElementById("degr").style = "transform: scale(1,1); transition-delay: 0.4s";
    document.getElementById("lineone").style = "transform: translateX(0%); transition-delay: .1s;";
    document.getElementById("linetwo").style = "transform: translateX(0%); transition-delay: .3s;";
    document.getElementById("linethree").style = "transform: translateX(0%); transition-delay: .4s;";
    document.getElementById("crid").style = "animation: aut 2s infinite alternate;";
        
}