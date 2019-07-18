package  {

	import GZ.Gfx.Object;

	import GZ.File.RcImg;
	import GZ.Gfx.Clip.Letter;
	import GZ.File.RcFont;
	import GZ.File.RcText;
	import GZ.Gfx.Root;

	import GZ.Sys.Interface.Interface;
	import GZ.Gfx.Clip;
	import GZ.Gfx.Clip.Text;

	import GZ.Base.Math.Math;

	import GZ.Gfx.Clip.Img;
	import GZ.Base.Quaternion;
	
	import Demo.Browser.BrowserContainer;
	import Demo.Browser.BrowserClip;
	
	

	/**
	 * @author Maeiky
	 */
	public class DemoText extends Clip {


		public var oBrowserContainer : BrowserContainer;
		
		public var oBrowser : BrowserClip;
		
	
		
		
		public function DemoText( _oParent : Root ):Void {
			//Clip(_oParent);
			Clip(_oParent, _oParent.oItf.nHalfFrameWidth,  _oParent.oItf.nHalfFrameHeight);
			
			
			
			Debug.fTrace("--- new BrowserClip ----");
			oBrowser = new BrowserClip(this);
			
			
		}	


		
		override public function fUpdateParentToChild():Void {
		/*
			var _nMouseX : Float = oItf.oWindow.nMouseX - oItf.nHalfFrameWidth;
			var _nMouseY : Float = oItf.oWindow.nMouseY - oItf.nHalfFrameHeight;

			//!Updated each frame, parents before
			TnYaw(_nMouseX / oItf.nHalfFrameWidth / -1.15);
			TnPitch(_nMouseY / oItf.nHalfFrameHeight / -1.15);
*/
		}




	}
}
