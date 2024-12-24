let footer = document.querySelector("footer");

document.getElementById("button").addEventListener("click", function(){
    //очищаем футер от прошлого заполнения
    footer.innerHTML = "";

    let input = document.querySelectorAll("input");
    let selector = document.querySelectorAll("select");

    if(input[1].value == "" ||
       input[1].value == "" ||
       input[2].value == ""){
        footer.innerHTML += "<h1>Заполните необходимые поля!</h1>";
    }
    else{
        footer.style.border = "1px solid black";
        footer.innerHTML += "<h1>Карточка студента</h1><br>";
        
        //ФИО
        footer.innerHTML += ("<h1>" + input[1].value + "&emsp;" + 
        input[0].value + "&emsp;" + input[2].value + "</h1><br>");

        //группа факультет курс
        if(selector[0].selectedIndex != 0){
            footer.innerHTML += ("<h1>" + selector[0].options[selector[0].selectedIndex].text + "&emsp;&emsp;&emsp;</h1>");
        }
        if(selector[1].selectedIndex != 0){
            footer.innerHTML += ("<h1>" + selector[1].options[selector[1].selectedIndex].text + "&emsp;&emsp;&emsp;</h1>");
        }
        if(selector[2].selectedIndex != 0){
            footer.innerHTML += ("<h1>" + selector[2].options[selector[2].selectedIndex].text + "</h1>");
        }

        //телефон почта
        footer.innerHTML += "<br><h1>" + input[3].value + "&emsp;&emsp;" + input[4].value + "</h1><br>";
        
        //для соцсетей
        if(input[5].checked == 1){footer.innerHTML += "<h1>VK &emsp;&emsp;&emsp;</h1>";}
        if(input[6].checked == 1){footer.innerHTML += "<h1> Facebook &emsp;&emsp;&emsp;</h1>";}
        if(input[7].checked == 1){footer.innerHTML += "<h1>Instagram</h1>";}
        if( input[5].checked == 0 && 
            input[6].checked == 0 &&
            input[7].checked == 0){
            footer.innerHTML += "<h1>Соцсетей нет</h1>";
        }
    }

    //alert("С НОВЫМ ГОДОМ!");
});