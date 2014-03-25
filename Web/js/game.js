function game_over () {
  alert("You died!! \n\n### GAME OVER !!! ###");
}
function monstruo (animal, direccion) {
  alert("Tienes un " + animal + " delante, lo tienes que matar!!");

  player_life = 100;
  monster_life = 100;
  monster_attack = 25;

  while (player_life > 0){
    ataque = prompt("que haces?");

    if (ataque == "ataque de lado"){
      monster_life -= 20;
    }
    else {
      if (ataque == "ataque de frente") {
        monster_life -= 30;
      }
      else {
        if (ataque == "super ataque" ){
          monster_life -= 50;
        }
      }
    }
    if (monster_life <= 0)
      break;

    player_life -= monster_attack;

  }
  if (player_life <= 0)
    game_over();
  else {
    confirm("Bien echo, lo as matado!!");
    direccion();
  }
}


function inicio () {
  action = prompt("Estas en tierras lejanas, tu mision es llegar al final\
    para ello deveras passar por diversas aventuras, en las que podras\
    morir");

  if (action == "oeste") {
    oceano();
  } else {
    if (action == "norte"){
      playa();
    } else {
      alert("Eso no se puede hacer");
      inicio();
    }
  }
}

function oceano () {
  action = prompt("Estas en el agua en mita del oceano");

  if (action == "sur" && action == "oeste")
    game_over();
  else {
    if(action == "norte") {
      confirm("Nadas hasta la playa");
      playa();
    }
  }
}

function playa () {
  action = prompt("llegas cansado de nadar tanto tiempo pero tienes que seguir\
    andando. Estas en un cruze de camino e tienes que elejir si volver o seguir");

  if (action == "sur") {
    alert("Vuelves al oceano e mueres ahogado por la marea");
    game_over();
  } else {
    if (action == "este")
      arenas_movedizas();

    else {
      if (action == "norte")
        monstruo("monstruo", jungla());

      else {
        if (action == "oeste")
          charca();
      }
    }
  }
}

function arenas_movedizas () {
  alert("Vas hacia el este e caes en arenas movedizas, debes cojer una herramientas");

  veces = 0; herramienta = " ";
7
  while (herramienta != "martillo" && herramienta != "hacha" && herramienta != "tronco") {

    herramienta = prompt("Coje una herramienta");
    veces += 1;

    if (veces == 3) {
      game_over();
      break;
    }
  }

  if (herramienta == "tronco") {
    confirm("sales de las arenas movedizas");
    monstruo("monstruo", jungla());
  } else {
    if (herramienta == "martillo" || veces >= 2) {
      alert("muy lejos, te mueres");
      game_over();
    } else {
      if (herramienta == "hacha") {
       confirm("el hacha te corta la mano y cojes un tronco y consigues salir");
        monstruo("monstruo", jungla());
      }
    }
  }
}


function charca () {
  arma = " ";
  veces = 0;

  while (arma != "pistola" || arma == "red electrica") {
    arma = prompt("llegas a una charca llena de cocodrilos tienes que matarlos con un arma");
    if (veces == 2) {
      break;
      game_over();
    }
  }
  if (arma == "pistola") {
    confirm("matas a los cocodrilos y sigues para el norte, encuentras un tronco");
    monstruo("monstruo", jungla());
  } else {
    if (arma == "red electrica") {
      alert("mueres electrocutado");
      game_over();
    }
  }
}

function jungla () {
  action = prompt("Llegas a la jungla, aqui hay dos caminos tienes que elegir\
    si continuar o cambiar de direccion al oeste")

  if (action == "continuar"){
    alert("Has caido en un agujero mui grande en el suelo");
    game_over();
  }
  else {
    if (action == "oeste") {
      action = prompt("Entras en la jungla e aqui un cruze de camino");

      switch (action){

        case "sur": alert("No puedes"); break; jungla();
        case "oeste": monstruo("monstruo", monstruo("tigre", desierto())); break;
        case "norte": monstruo("tigre", desierto()); break;
        case "este" : monstruo("monos", monstruo("tigre", desierto())); break;
      }
    }
  }
}
function desierto () {

}
inicio();
