// A.V.Plotnikov, verstalo.com

$(document).ready(function(){
	// Список новостей
	$(".news-list .nl-detail-link").click(function(){
		var linkElement = $(this);
		var linkText = $(this).text();
	
		$(this).siblings(".nl-other-text").slideToggle(function(){
			if (linkText == "свернуть")
				$(linkElement).text("показать новость полностью");
			else
				$(linkElement).text("свернуть");
		}).parent().siblings("dd").find(".nl-other-text").slideUp(function(){
			$(this).next(".nl-detail-link").text("показать новость полностью");
		});
		
		return false;
	});
	
 });