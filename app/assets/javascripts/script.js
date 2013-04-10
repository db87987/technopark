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
	
	// Контакты (показать адрес)
	$(".ct-title").click(function(){
		var linkElement = $(this).find("span");
		var linkText = $(this).find("span").text();
	
		$(this).toggleClass("ct-active").
			next("div").toggle();
		
		if (linkText == "Показать адрес")
			$(linkElement).text("Скрыть адрес");
		else
			$(linkElement).text("Показать адрес");
	
		return false;
	});
	
 });