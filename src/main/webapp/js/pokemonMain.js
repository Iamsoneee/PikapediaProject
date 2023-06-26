document.addEventListener('DOMContentLoaded', function() {
    var pokemonCards = document.querySelectorAll('.pokemon-card');
    pokemonCards.forEach(function(card) {
        var cardId = card.id.split('-')[2]; // "pokemon-card-${pokemon.no}" 형식에서 번호 추출
        var gradient = getGradient(cardId);
        card.style.border = gradient;
    });
});

function getGradient(pokemonNo) {
    var type1Color = getColorForType(pokemonNo, 'type1');
    var type2Color = getColorForType(pokemonNo, 'type2');
    if (type1Color && type2Color) {
        return 'linear-gradient(to right, ' + type1Color + ', ' + type2Color + ')';
    } else if (type1Color) {
        return type1Color;
    } else {
        return 'none';
    }
}

// JSP에서 가져온 색상 값을 사용하도록 수정
function getColorForType(pokemonNo, type) {
    var typeName;
    if (type === 'type1') {
        typeName = document.getElementById('type1Color-' + pokemonNo).value;
    } else if (type === 'type2') {
        typeName = document.getElementById('type2Color-' + pokemonNo).value;
    }

    return typeName;
}
