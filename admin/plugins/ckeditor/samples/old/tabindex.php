<!DOCTYPE html>
<!--
Copyright (c) 2003-2016, CKSource - Frederico Knabben. All rights reserved.
For licensing, see LICENSE.md or http://ckeditor.com/license
-->
<html>
<head>
	<meta charset="utf-8">
	<title>TAB Key-Based Navigation &mdash; CKEditor Sample</title>
	<script src="../../ckeditor.js"></script>
	<link href="sample.css" rel="stylesheet">
	<style>

		.cke_focused,
		.cke_editable.cke_focused
		{
			outline: 3px dotted blue !important;
			*border: 3px dotted blue !important;	/* For IE7 */
		}

	</style>
	<script>

		CKEDITOR.on( 'instanceReady', function( evt ) {
			var editor = evt.editor;
			editor.setData( 'This editor has it\'s tabIndex set to <strong>' + editor.tabIndex + '</strong>' );

			// Apply focus class name.
			editor.on( 'focus', function() {
				editor.container.addClass( 'cke_focused' );
			});
			editor.on( 'blur', function() {
				editor.container.removeClass( 'cke_focused' );
			});

			// Put startup focus on the first editor in tab order.
			if ( editor.tabIndex == 1 )
				editor.focus();
		});

	</script>
</head>
<body>
	<h1 class="samples">
		<a href="index.php">CKEditor Samples</a> &raquo; TAB Key-Based Navigation
	</h1>
	<div class="warning deprecated">
		This sample is not maintained anymore. Check out its <a href="http://sdk.ckeditor.com/samples/tabindex.php">brand new version in CKEditor SDK</a>.
	</div>
	<div class="description">
		<p>
			This sample shows how tab key navigation among editor instances is
			affected by the <code>tabIndex</code> attribute from
			the original page element. Use TAB key to move between the editors.
		</p>
	</div>
	<p>
		<textarea class="ckeditor" cols="80" id="editor4" rows="10" tabindex="1"></textarea>
	</p>
	<div class="ckeditor" contenteditable="true" id="editor1" tabindex="4"></div>
	<p>
		<textarea class="ckeditor" cols="80" id="editor2" rows="10" tabindex="2"></textarea>
	</p>
	<p>
		<textarea class="ckeditor" cols="80" id="editor3" rows="10" tabindex="3"></textarea>
	</p>
	<div id="footer">
		<hr>
		<p>
			CKEditor - The text editor for the Internet - <a class="samples" href="http://ckeditor.com/">http://ckeditor.com</a>
		</p>
		<p id="copy">
			Copyright &copy; 2003-2016, <a class="samples" href="http://cksource.com/">CKSource</a> - Frederico
			Knabben. All rights reserved.
		</p>
	</div>
</body>
</html>
