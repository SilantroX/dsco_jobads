document.addEventListener('DOMContentLoaded', function() {
    window.addEventListener('message', function(event) {
        var anuncioContainer = document.getElementById('anuncio-container');
        var logo = document.getElementById('logo');
        var mensaje = document.getElementById('mensaje');
        var barratrabajo = document.getElementById('barra-trabajo');
        var sonidoAnuncio = document.getElementById('sonido-anuncio');

        logo.src = event.data.logo;
        mensaje.innerText = event.data.mensaje;
        anuncioContainer.style.backgroundColor = event.data.colorfondo;
        anuncioContainer.style.boxShadow = '0 0 10px ' + event.data.colorbarra;
        anuncioContainer.style.color = event.data.colorletra;
        barratrabajo.style.backgroundColor = event.data.colorbarra;
        
        sonidoAnuncio.play();

        anuncioContainer.style.display = 'flex';
        setTimeout(function() {
            anuncioContainer.classList.add('salida');
            var onAnimationEnd = function() {
                anuncioContainer.style.display = 'none';
                anuncioContainer.classList.remove('salida');
                anuncioContainer.removeEventListener('animationend', onAnimationEnd);
            };
            anuncioContainer.addEventListener('animationend', onAnimationEnd);
        }, 5000);
        
        
    });
});
