<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<style>
#footer {
	padding: 4em 0 2em 0;
	background-color: #A27ACF;
	text-align: center;
}

#footer .inner {
	width: 50%;
	margin: 0 auto;
}

@media screen and (max-width: 980px) {
	#footer .inner {
		width: 75%;
	}
}

@media screen and (max-width: 480px) {
	#footer .inner {
		width: 90%;
	}
}

#footer .copyright {
	color: rgba(255, 255, 255, 0.5);
	font-size: 0.9em;
	margin: 0 0 2em 0;
	padding: 0;
	text-align: center;
}

@media screen and (max-width: 736px) {
	#footer {
		padding: 3em 0 1em 0;
	}
}

/* 			html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas, details, embed, figure, figcaption, footer, header, hgroup, menu, nav, output, ruby, section, summary, time, mark, audio, video { */
/* 		margin: 0; */
/* 		padding: 0; */
/* 		border: 0; */
/* 		font-size: 100%; */
/* 		vertical-align: baseline; */
/* 	} */
article, aside, details, figcaption, figure, footer, header, hgroup,
	menu, nav, section {
	display: block;
}

body {
	line-height: 1;
}

ol, ul {
	list-style: none;
}

blockquote, q {
	quotes: none;
}

blockquote:before, blockquote:after, q:before, q:after {
	content: '';
	content: none;
}

table {
	border-collapse: collapse;
	border-spacing: 0;
}

body {
	-webkit-text-size-adjust: none;
}
</style>
<footer id="footer">
	<div class="inner">
		<h2>What about this place?</h2>
		<p>This homepage was created through the Pai Chai University Saeil
			Center project. The producers are Somin Kim and Sanghee Lee. Thank
			you for visiting.</p>

		<p class="copyright">
			&copy; WTAP. Design: <a href="https://templated.co">TEMPLATED</a>.
			Images: <a href="https://unsplash.com/">Unsplash</a>. Videos: <a
				href="http://coverr.co/">Coverr</a>.
		</p>
	</div>
</footer>