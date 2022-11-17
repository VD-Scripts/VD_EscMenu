window.addEventListener("message", function(event){
    let data = event.data

    if (data.action === "esc") {
        $("#condainer").fadeToggle(400)
    }

});


$(".regulament").click(function(){
    $(".regulamentmen").fadeToggle(400)
});

$(".reia").click(function() {
    $("#condainer").fadeToggle(400)
    $(".regulamentmen").fadeOut(400)
    $.post('http://VD_EscMenu/actiune', JSON.stringify({val: "reia"}));
});

$(".mapa").click(function() {
    $("#condainer").fadeToggle(400)
    $.post('http://VD_EscMenu/actiune', JSON.stringify({val: "harta"}));
});

$(".setari").click(function() {
    $("#condainer").fadeToggle(400)
    $.post('http://VD_EscMenu/actiune', JSON.stringify({val: "setari"}));
});

$(".paraseste").click(function() {
    $.post('http://VD_EscMenu/kickPlayer', JSON.stringify({}));
});