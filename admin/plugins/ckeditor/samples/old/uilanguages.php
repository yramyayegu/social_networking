<!DOCTYPE html>
<!--
Copyright (c) 2003-2016, CKSource - Frederico Knabben. All rights reserved.
For licensing, see LICENSE.md or http://ckeditor.com/license
-->
<html>
<head>
	<meta charset="utf-8">
	<title>User Interface Globalization &mdash; CKEditor Sample</title>
	<script src="../../ckeditor.js"></script>
	<script src="assets/uilanguages/languages.js"></script>
	<link rel="stylesheet" href="sample.css">
</head>
<body>
	<h1 class="samples">
		<a href="index.php">CKEditor Samples</a> &raquo; User Interface Languages
	</h1>
	<div class="warning deprecated">
		This sample is not maintained anymore. Check out its <a href="http://sdk.ckeditor.com/samples/uilanguages.php">brand new version in CKEditor SDK</a>.
	</div>
	<div class="description">
		<p>
			This sample shows how to automatically replace <code>&lt;textarea&gt;</code> elements
			with a CKEditor instance with an option to change the language of its user interface.
		</p>
		<p>
			It pulls the language list from CKEditor <code>_languages.js</code> file that contains the list of supported languages and creates
			a drop-down list that lets the user change the UI language.
		</p>
		<p>
			By default, CKEditor automatically localizes the editor to the language of the user.
			The UI language can be controlled with two configuration options:
			<code><a class="samples" href="http://docs.ckeditor.com/#!/api/CKEDITOR.config-cfg-language">language</a></code> and
			<code><a class="samples" href="http://docs.ckeditor.com/#!/api/CKEDITOR.config-cfg-defaultLanguage">
			defaultLanguage</a></code>. The <code>defaultLanguage</code> setting specifies the
			default CKEditor language to be used when a localization suitable for user's settings is not available.
		</p>
		<p>
			To specify the user interface language that will be used no matter what language is
			specified in user's browser or operating system, set the <code>language</code> property:
		</p>
<pre class="samples">
CKEDITOR.replace( '<em>textarea_id</em>', {
	// Load the German interface.
	<strong>language: 'de'</strong>
});</pre>
		<p>
			Note that <code><em>textarea_id</em></code> in the code above is the <code>id</code> attribute of
			the <code>&lt;textarea&gt;</code> element to be replaced.
		</p>
	</div>
	<form action="sample_posteddata.php" method="post">
		<p>
			Available languages (<span id="count"> </span> languages!):<br>
			<script>

				document.write( '<select disabled="disabled" id="languages" onchange="createEditor( this.value );">' );

				// Get the language list from the _languages.js file.
				for ( var i = 0 ; i < window.CKEDITOR_LANGS.length ; i++ ) {
					document.write(
						'<option value="' + window.CKEDITOR_LANGS[i].code + '">' +
							window.CKEDITOR_LANGS[i].name +
						'</option>' );
				}

				document.write( '</select>' );

			</script>
			<br>
			<span style="color: #888888">
				(You may see strange characters if your system does not support the selected language)
			</span>
		</p>
		<p>
			<textarea cols="80" id="editor1" name="editor1" rows="10">&lt;p&gt;This is some &lt;strong&gt;sample text&lt;/strong&gt;. You are using &lt;a href="http://ckeditor.com/"&gt;CKEditor&lt;/a&gt;.&lt;/p&gt;</textarea>
			<script>

				// Set the number of languages.
				document.getElementById( 'count' ).innerHTML = window.CKEDITOR_LANGS.length;

				var editor;

				function createEditor( languageCode ) {
					if ( editor )
						editor.destroy();

					// Replace the <textarea id="editor"> with an CKEditor
					// instance, using default configurations.
					editor = CKEDITOR.replace( 'editor1', {
						language: languageCode,

						on: {
							instanceReady: function() {
								// Wait for the editor to be ready to set
								// the language combo.
								var languages = document.getElementById( 'languages' );
								languages.value = this.langCode;
								languages.disabled = false;
							}
						}
					});
				}

				// At page startup, load the default language:
				createEditor( '' );

			</script>
		</p>
	</form>
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
