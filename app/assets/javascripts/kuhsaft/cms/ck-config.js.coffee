CKEDITOR.editorConfig = (config) ->
  config.language = "de"
  config.format_tags = "p;h1;h2;h3;h4;pre"
  config.toolbar = [
                    ["Undo", "Redo"],
                    ["Format", "-", "RemoveFormat"],
                    ["HorizontalRule"], ["Link", "Unlink"],
                    ["Cut", "Copy", "Paste"],
                    ["Source", "-", "ShowBlocks", "-", "About"]
                  ]

  config.linkShowAdvancedTab = false
  config.linkShowTargetTab = false

  true

# FULL OPTIONS:
#[
#['Source','-','Save','NewPage','Preview','-','Templates'],
#['Cut','Copy','Paste','PasteText','PasteFromWord','-','Print', 'SpellChecker', 'Scayt'],
#['Undo','Redo','-','Find','Replace','-','SelectAll','RemoveFormat'],
#['Form', 'Checkbox', 'Radio', 'TextField', 'Textarea', 'Select', 'Button', 'ImageButton', 'HiddenField'],
#'/',
#['Bold','Italic','Underline','Strike','-','Subscript','Superscript'],
#['NumberedList','BulletedList','-','Outdent','Indent','Blockquote','CreateDiv'],
#['JustifyLeft','JustifyCenter','JustifyRight','JustifyBlock'],
#['Link','Unlink','Anchor'],
#['Image','Flash','Table','HorizontalRule','Smiley','SpecialChar','PageBreak'],
#'/',
#['Styles','Format','Font','FontSize'],
#['TextColor','BGColor'],
#['Maximize', 'ShowBlocks','-','About']
#]
