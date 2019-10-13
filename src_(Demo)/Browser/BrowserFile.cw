package  {



	import GZ.Gfx.Clip.Img;
	/**
	 * @author Maeiky 
	 */
	public class BrowserFile {

		public var sPath : String;
		public var sBasePath : String;
		
		public	var oImg: Img ;
		
		public function BrowserFile( _sPath : String, _oImg : Img ):Void {
			sPath = _sPath;
			oImg = _oImg;
		}
		
		
		public pure function fFindFile( _aImg : Array<BrowserFile>,  _sPath: String ):BrowserFile {
			for(var i : Int = 0; i < _aImg.nSize; i++){
				var _oFile : BrowserFile = _aImg[i];
				if(_oFile.sPath  == _sPath){
					Debug.fConsole("FOUND, File: " + _sPath);
					return _oFile;
				}
			}
			Debug.fConsole("Error, File not preloaded: " + _sPath);
			return 0;
		}
	
		
		
	}
}
