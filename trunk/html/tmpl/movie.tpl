<object classid="clsid:02BF25D5-8C17-4B23-BC80-D3488ABDDC6B" codebase="http://www.apple.com/qtactivex/qtplugin.cab#version=6,0,2,0" id="movie" height="540" width="527">
  <param name="src" value="show.php?movie={$movie}">
  <param name="autoplay" value="TRUE">
  <param name="cache" value="TRUE">
  <param name="type" value="video/quicktime">

  <param name="bgcolor" value="#FFFFFF">
  <param name="controller" value="FALSE">
  <param name="enablejavascript" value="TRUE">
  <param name="qtnext1" value="javascript:GAMAds.endMovie(GAMAds.oCurrentMovie);">
  <embed src="show.php?movie={$movie}" pluginspage="http://www.apple.com/quicktime/download/" name="movie" id="movieID" autoplay="TRUE" cache="TRUE" type="video/quicktime" bgcolor="#FFFFFF" controller="FALSE" enablejavascript="TRUE" qtnext1="javascript:GAMAds.endMovie(GAMAds.oCurrentMovie);" height="540" width="527"> 
</object>