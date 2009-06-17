var CSSPush = {
	touch: function(files) {
		files.each(function(f) {
			var css = "/stylesheets" + f.strip().toLowerCase();
			window.$$("link").each(function(l) {
				var root = window.location.protocol + "//" + window.location.host;
				var link = l.href.strip().toLowerCase();
				var compare = link.startsWith(root) ? root + css : css;
				if (link == compare || link.startsWith(compare + "?")) {
					l.href = compare + "?" + Math.random();
				}
			});
		});
	}
};