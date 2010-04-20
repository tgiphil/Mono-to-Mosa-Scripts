CALL Source.bat

copy Patches\KeyValuePair.cs "%LIB%\mcs\class\corlib\System.Collections.Generic\KeyValuePair.cs"
copy %SOURCE%\mcs\build\common\Consts.cs.in "%LIB%\mcs\build\common\Consts.cs"

copy Patches\Parser.cs "%LIB%\mcs\class\System.XML\System.Xml.XPath\"
copy Patches\PatternParser.cs "%LIB%\mcs\class\System.XML\System.Xml.XPath\"
copy Patches\PatternTokenizer.cs "%LIB%\mcs\class\System.XML\System.Xml.XPath\"
