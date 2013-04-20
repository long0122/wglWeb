
function addNavActive(comp){
	addLiActiveByUl(comp,"#navUl");
}

function addLiActiveByUl(comp,ul){
	$(ul+" li").removeClass("active"); 
	$(comp).addClass("active");
}