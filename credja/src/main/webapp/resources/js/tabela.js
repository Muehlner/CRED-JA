(function () {
	require([
         '/resources/js/jquery-3.1.1.js'
    ], function () { 
	
		var initialize,
			selecaoBanco,
			idBanco,
			pesquisaTabelas;
		
		
		initialize = function () {
			 var docBody = $(document.body);
			 
			 docBody.on('change', '.selecaoBanco',    selecaoBanco)
			 		.on('click' , '.pesquisaTabelas', pesquisaTabelas);
		};
		
		$(initialize);
		
		
		selecaoBanco = function(event){
			idBanco = $(this).val();
		};
		
		
		pesquisaTabelas = function (event) {
			 event.preventDefault();
			 $.ajax({
	             url: '/tabela/pesquisaTabelas?idBanco=' + idBanco,
	             type: 'GET',
	             dataType: 'json',
	             cache: false
	         });
		};
		
		
	});
})(jQuery);