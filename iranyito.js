$(function () {
    $("#megjelenit").on("click", beolvas);
    $("#szkuld").on("click", emberAdatBeir);
});
var emberek = [];
function beolvas() {
    $.ajax({
        type: "GET",
        url: "iranyito.php",
        success: function (result) {
            //console.log(result);
            emberek = JSON.parse(result);
            //console.log(emberek); 
            kiir();
        },
        error: function () {
            alert("Hiba az adatok betöltésekor!");
        }
    });
    }
function kiir() {
    console.log("kiir");
    $("article").empty();
    for (var i = 0; i < telefonkonyvem.length; i++) {
        var id = telefonkonyvem[i].id;
        var nev = telefonkonyvem[i].nev;
        var kor = telefonkonyvem[i].kor;
        var neme = telefonkonyvem[i].neme;
        var elem = "<div><h2>" + nev + "</h2>\n\
        <p>" + id + "</p><p>" + neme + "</p><p>" + kor + "</p></div>";
        $("article").append(elem);
    }
}

function emberAdatBeir() {
    var szemely = {
        nev: $("#nev").val(),
        kor: $("#kor").val(),
        neme: $("#neme").val()
    };

    $.ajax({
        type: "POST",
        url: "adatFelvisz.php",
        data: szemely,
        success: function (ujszemely) {
            //console.log(ujszemely);
            emberek.push(JSON.parse(ujSzemely));
            //console.log(emberek);
            //kiir();
        },
        error: function () {
            alert("Hiba az adatok mentésekor");
        }
    });
}
