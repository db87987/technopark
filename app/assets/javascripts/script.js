// A.V.Plotnikov, verstalo.com

$(document).ready(function(){
	// Список новостей
	$(".news-list .nl-detail-link").click(function(){
		var linkElement = $(this);
		var linkText = $(this).text();
	
		$(this).parent().toggleClass("nl-active").siblings("dd").removeClass("nl-active").
			find(".nl-detail-link").text("показать новость полностью");;
		
		if (linkText == "свернуть")
			$(linkElement).text("показать новость полностью");
		else
			$(linkElement).text("свернуть");
	
		return false;
	});
	
 });