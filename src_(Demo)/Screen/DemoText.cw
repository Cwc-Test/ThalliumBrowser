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
	
	
	<cpp_h>
		#include <iostream>
		#include "litehtml/os_types.h"
		#include "litehtml/types.h"
		#include "litehtml/context.h"
		#include "litehtml/document.h"
	</cpp_h>
	

	/**
	 * @author Maeiky
	 */
	public class DemoText extends Clip {

		<cpp_class_h_>
			litehtml::document::ptr		m_doc; //Doc must be after BrowserContainer, (it's must be destroyed after)
			litehtml::context	oBrowserContext;
			//gzUp<Lib_Demo::Browser::cBrowserContainer> oBrowserContainer;
		</cpp_class_h_>
		
	
		public var oBrowserContainer : BrowserContainer;
		
		public var oImg : Img;
		public var oLetter : Letter;
		public var oText : Text;
		public var nAdd : Int = 0;
		
		public var oRcMasterCss : RcText;
		
	
		
		
		public function DemoText( _oParent : Root ):Void {
			Clip(_oParent, _oParent.oItf.nHalfFrameWidth,  _oParent.oItf.nHalfFrameHeight);
			
			
			Debug.fTrace("----LoadFont ----");
			
		//	var _oFont : RcFont = new RcFont( "c:/extra_fonts/ProggyClean.ttf");
			var _oFont : RcFont = new RcFont( "Exe|Rc/Fonts/ProggyTiny.ttf", 10);
		//	var _oFont : RcFont = new RcFont("c:/extra_fonts/DroidSans.ttf");
		
			
		
		
			Debug.fTrace("--------");
			_oFont.fCpuLoad();
			
			oImg = new Img(this, 100.0, 100.0, _oFont, true);
			
			
			
			oRcMasterCss = new RcText("Exe|Rc/Text/master.css");
			oRcMasterCss.fCpuLoad();
			
			<cpp>
				oBrowserContext.load_master_stylesheet((char*)oRcMasterCss->sText.fToCStr().get());
			</cpp>
			
			
			//	oImg.vPos.fSetSpeed(10);
			//oImg.vPos.fSetLimit(99900);
			
			//vPos.fSetSpeed(-100);
		//	vPos.fSetLimit(99900);
			
			
		//	oImg.vPos.nX = 256;
		//	oImg.vPos.nY = 256;
			
			
			oImg.vColor.nRed = 1.0;
			Debug.fTrace("--Finish-");
		//	oImg.WnRed(1.0);
			
			
			/*
			oImg.WnWidth(0.5);
			oImg.WnHeight(0.5);
			oImg.TnWidth(1.0);
			oImg.TnHeight(1.0);
			oImg.EnWidth(75);
			oImg.EnHeight(75);
			
			
		//	aaasBugHere
			
		//	floowingnOanal
			
			oImg.TnYaw(3.0 * Math.nPI);
			oImg.EnYaw(150);

			oImg.WnAlpha(0.0);
			oImg.TnAlpha(1.0);
			oImg.EnAlpha(100.0);
			
			*/
			
			
		//	oImg = new Img(this, 400.0, 300.0, _oFont, true);
			
		
			//sssssssssf
			
		//oLetter = new Letter(this, _oFont, -350.0, 50.0, 65);
		oLetter = new Letter(this, _oFont, 100.0, 100.0, 65);
			//		oLetter.vPos.nX = 256;
			//oLetter.vPos.nY = 256;
		oLetter.vColor.nRed = 1.0;
		oLetter.vSize.nHeight = 5.0;
		oLetter.vSize.nWidth = 5.0;
		
		

		//oText = new Text(this, _oFont,  oItf.nHalfFrameWidth * -1 + 20.0, -0.0, "Im a genius Testaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa12345678910");
		oText = new Text(this, _oFont,  oItf.nHalfFrameWidth * -1 + 20.0, -0.0, "Im a genius Testaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa12345678910");
		//oText = new Text(this, _oFont,  255, 255, "Im a genius Testaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa12345678910");

		oText.vColor.nRed = 1.0;
		
		
		oText.oCurrRange.fClear();
		oText.oCurrRange.fAdd("Yeah");
		
	
		
		/*	
		Debug.fTrace1("-oText-");
			oText = new Text(this, _oFont,  oItf.nHalfFrameWidth * -1 + 20.0, -0.0, "Im a genius Testaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa12345678910");

			Debug.fTrace1("-ok-");
	*/		
			
			/*
			//!Create an image
			oImg = new Img(this, 400.0, 300.0, E"Transform.png", true);
			oImg.WnWidth(0.5);
			oImg.WnHeight(0.5);
			oImg.TnWidth(4.0);
			oImg.TnHeight(4.0);
			oImg.EnWidth(75);
			oImg.EnHeight(75);

			oImg.TnYaw(3.0 * Math.nPI);
			oImg.EnYaw(150);

			oImg.WnAlpha(0.0);
			oImg.TnAlpha(1.0);
			oImg.EnAlpha(100.0);
*/
			/*
			EnYaw(5);
			EnPitch(5);
			
			
			var _nTest : Int = 0;
			*/
			
			fOnDocumentLoaded("","");
		}	


		
		 public function fOnDocumentLoaded(_sFilePath:String, _sRealUrl:String ):Void {
			
			var _oRcHtml : RcText = new RcText("Exe|Rc/Text/Html.txt");
			_oRcHtml.fCpuLoad();
			
			if(_oRcHtml.sText == ""){
				_oRcHtml.sText = "<h1>Something Wrong</h1>";
			}
			
			_oRcHtml.sText = "<h1>Something Wrong</h1>";
			oBrowserContainer = new BrowserContainer();
			
			<cpp>
			
			
			//oBrowserContainer = Lib_Demo::Browser::BrowserContainer::New(this);
			
			//oBrowserContainer->del_clip();
			
			m_doc = litehtml::document::createFromUTF8((const char*) _oRcHtml->sText.fToCStr().get(), oBrowserContainer.get(), &oBrowserContext);
			m_doc->render(800);
			litehtml::position clip = litehtml::position(0, 0, 800, 600);
			m_doc->draw(0, 0, 0, &clip);
			</cpp>
			
			//	litehtml::document::ptr		m_doc;
			//m_doc = litehtml::document::createFromUTF8((const char*) html_text, this, m_parent->get_html_context());
			//m_doc->render(max_width);// parameter max_width usually the browser window width.
			//m_doc->draw(hdc, m_left, m_top, &clip);//uint_ptr hdc -->This parameter will be passed into all draw functions 
		
		}

		
		
		override public function fUpdateParentToChild():Void {
		

			nAdd++;
			oText.oCurrRange.fClear();
			oText.oCurrRange.fAdd("Test: " + nAdd);
			return; //disable
		
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
