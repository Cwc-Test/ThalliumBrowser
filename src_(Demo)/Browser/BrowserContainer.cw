package  {


	import Demo.Browser.BrowserClip;
	import GZ.Base.Pod.Size;

	<cpp_h>
		#include <iostream>
		#include "litehtml/os_types.h"
		#include "litehtml/types.h"
		#include "litehtml/context.h"
		#include "litehtml/html.h" //document_container
	</cpp_h>
	
	

	<cpp_class_h>
		//Lib_Demo::Browser::cBrowserClip* oClip;
	
		virtual litehtml::uint_ptr	create_font(const litehtml::tchar_t* faceName, int size, int weight, litehtml::font_style italic, unsigned int decoration, litehtml::font_metrics* fm);
		virtual void				delete_font(litehtml::uint_ptr hFont);
		virtual int					text_width(const litehtml::tchar_t* text, litehtml::uint_ptr hFont);
		virtual void				draw_text(litehtml::uint_ptr hdc, const litehtml::tchar_t* text, litehtml::uint_ptr hFont, litehtml::web_color color, const litehtml::position& pos);
		virtual int					pt_to_px(int pt);
		virtual int					get_default_font_size() const;
		virtual const litehtml::tchar_t*	get_default_font_name() const;
		virtual void				draw_list_marker(litehtml::uint_ptr hdc, const litehtml::list_marker& marker);
		virtual void				load_image(const litehtml::tchar_t* src, const litehtml::tchar_t* baseurl, bool redraw_on_ready);
		virtual void				get_image_size(const litehtml::tchar_t* src, const litehtml::tchar_t* baseurl, litehtml::size& sz);
		//virtual void				draw_image(uint_ptr hdc, const wchar_t* src, const wchar_t* baseurl, const litehtml::position& pos);
				
		virtual void				draw_background(litehtml::uint_ptr hdc, const litehtml::background_paint& bg);
		virtual void				draw_borders(litehtml::uint_ptr hdc, const litehtml::borders& borders, const litehtml::position& draw_pos, bool root);

		virtual	void				set_caption(const litehtml::tchar_t* caption);
		virtual	void				set_base_url(const litehtml::tchar_t* base_url);
		virtual void				link(const std::shared_ptr<litehtml::document>& doc, const litehtml::element::ptr& el);
		virtual void				on_anchor_click(const litehtml::tchar_t* url, const litehtml::element::ptr& el);
		virtual	void				set_cursor(const litehtml::tchar_t* cursor);
		virtual	void				transform_text(litehtml::tstring& text, litehtml::text_transform tt);
		virtual void				import_css(litehtml::tstring& text, const litehtml::tstring& url, litehtml::tstring& baseurl);
		virtual void				set_clip(const litehtml::position& pos, const litehtml::border_radiuses& bdr_radius, bool valid_x, bool valid_y);
		virtual void				del_clip();
		virtual void				get_client_rect(litehtml::position& client) const;
		virtual std::shared_ptr<litehtml::element>	create_element(const litehtml::tchar_t *tag_name,
																	 const litehtml::string_map &attributes,
																	 const std::shared_ptr<litehtml::document> &doc);
																	 
		virtual void				get_media_features(litehtml::media_features& media) const;
		virtual void				get_language(litehtml::tstring& language, litehtml::tstring & culture) const;
		
		
		virtual int					line_height(litehtml::uint_ptr hdc, litehtml::uint_ptr hFont);
	</cpp_class_h>
			
				
	public struct BrowserContainer extends "public litehtml::document_container" {

		public wvar oClip : BrowserClip;
	
		public function BrowserContainer(_oClip : BrowserClip ):Void {
			oClip = _oClip;
		}	
		
	<cpp_class>
		litehtml::uint_ptr	cBrowserContainer::create_font(const litehtml::tchar_t* faceName, int size, int weight, litehtml::font_style italic, unsigned int decoration, litehtml::font_metrics* fm){
			printf("\n**Lite_HTML_Func: create_font %s , %d",faceName, size );
			return 	oClip->fNewFont(gzStrC((char*)faceName), size);
		}


		
		void	cBrowserContainer::delete_font(litehtml::uint_ptr hFont){
			printf("\n**Lite_HTML_Func: delete_font");
		}

		int		cBrowserContainer::text_width(const litehtml::tchar_t* text, litehtml::uint_ptr hFont){
			/*
			int _nCount = 0;
			while (text[_nCount] != 0x00){
			  _nCount++;
			}*/
		//	printf("\n**Lite_HTML_Func: text_width: %s, %d", text, _nCount *8);
		//	printf("\n**Lite_HTML_Func: text_width: %s, %d", text);
				
			return oClip->fGetTextWidth((Lib_GZ::File::cRcFont*)hFont, gzStrC((char*)text));
			
	
			//return _nCount * 8; //8 width char
		}

		void	cBrowserContainer::draw_text(litehtml::uint_ptr hdc, const litehtml::tchar_t* text, litehtml::uint_ptr hFont, litehtml::web_color color, const litehtml::position& pos){
		//	printf("\n**Lite_HTML_Func: draw_text x%d, y%d, width%d, height%d, %s ",pos.x,pos.y,pos.width, pos.height, text);

			oClip->fDraw_text((Lib_GZ::File::cRcFont*)hFont, gzStrC((char*)text), pos.x,pos.y,pos.width, pos.height);
			// pos.left(), pos.top(), pos.right(), pos.bottom() 
		}

		int		cBrowserContainer::pt_to_px(int pt){
			printf("\n**Lite_HTML_Func: pt_to_px");
			
			//GdkScreen* screen = gdk_screen_get_default();
			//double dpi = gdk_screen_get_resolution(screen);
			//return (int) ((double) pt * dpi / 72.0);
			double dpi = 96.0; //Is standard?
			return (int) ((double) pt * dpi / 72.0);
		}

		int		cBrowserContainer::get_default_font_size() const{
			printf("\n**Lite_HTML_Func: get_default_font_size");
			return 16;
		}

		const litehtml::tchar_t*	cBrowserContainer::get_default_font_name() const{
			printf("\n**Lite_HTML_Func: get_default_font_name");
			return "Arial";
		}

		void	cBrowserContainer::draw_list_marker(litehtml::uint_ptr hdc, const litehtml::list_marker& marker){
			printf("\n**Lite_HTML_Func: draw_list_marker");
		}

		void	cBrowserContainer::load_image(const litehtml::tchar_t* src, const litehtml::tchar_t* baseurl, bool redraw_on_ready){
			printf("\n**Lite_HTML_Func: load_image, src: %s , baseurl: %s, redraw_on_ready%d ", src, baseurl, redraw_on_ready );
			oClip->fPreLoadImg( gzStrC((char*)src) );
			
		}

		
		//	struct size:
		//int		width;
		//int		height;
		void	cBrowserContainer::get_image_size(const litehtml::tchar_t* src, const litehtml::tchar_t* baseurl, litehtml::size& sz){
			printf("\n**Lite_HTML_Func: get_image_size");
			//sz.width = 50;
			//sz.height = 50;
			//oClip->fGetImgSize(gzStrC((char*)src), gzVecSized<gzInt>{(int*)&sz, 2});
			oClip->fGetImgSize(gzStrC((char*)src), GZ_VecUpCast(Lib_GZ::Base::Pod::gzVecSize<gzInt>, sz));
			//oClip->fGetImgSize(gzStrC((char*)src), (Lib_GZ::Base::Pod::gzVecSize<gzInt>&) sz);

			//printf("\n sz.width: %d", sz.width);
			//printf("\n  sz.height: %d", sz.height);
		}
		
				/*
		void cBrowserContainer::draw_image( uint_ptr hdc, const tchar_t* src, const tchar_t* baseurl, const litehtml::position& pos ){
			printf("\n**draw_image  %s ", src);
	
			apply_clip((HDC) hdc);

			std::wstring url;
			make_url(src, baseurl, url);
			images_map::iterator img = m_images.find(url.c_str());
			if(img != m_images.end())
			{
				draw_img((HDC) hdc, img->second, pos);
			}

			release_clip((HDC) hdc);
		}
		*/

		
/*
class background_paint
{
public:
tstring					image;
tstring					baseurl;
background_attachment	attachment;
background_repeat		repeat;
web_color				color;
position				clip_box;
position				origin_box;
position				border_box;
border_radiuses			border_radius;
size					image_size;
int						position_x;
int						position_y;
bool					is_root;
*/
		
		void	cBrowserContainer::draw_background(litehtml::uint_ptr hdc, const litehtml::background_paint& bg){
			printf("\n**Lite_HTML_Func: draw_background %s  x:%d, y:%d",  bg.image.c_str(), bg.position_x, bg.position_y);
			oClip->fDrawImg(gzStrC(bg.image.c_str()), bg.position_x, bg.position_y, bg.image_size.width, bg.image_size.height);
		}

		

		
		void	cBrowserContainer::draw_borders(litehtml::uint_ptr hdc, const litehtml::borders& borders, const litehtml::position& draw_pos, bool root){
			
			int bdr_top		= 0;
			int bdr_bottom	= 0;
			int bdr_left	= 0;
			int bdr_right	= 0;

			if(borders.top.width != 0 && borders.top.style > litehtml::border_style_hidden)
			{
				bdr_top = (int) borders.top.width;
			}
			if(borders.bottom.width != 0 && borders.bottom.style > litehtml::border_style_hidden)
			{
				bdr_bottom = (int) borders.bottom.width;
			}
			if(borders.left.width != 0 && borders.left.style > litehtml::border_style_hidden)
			{
				bdr_left = (int) borders.left.width;
			}
			if(borders.right.width != 0 && borders.right.style > litehtml::border_style_hidden)
			{
				bdr_right = (int) borders.right.width;
			}
			printf("\n**Lite_HTML_Func: draw_borders, %d, %d, %d, %d", bdr_top,bdr_bottom,bdr_left,bdr_right);
			
		}


		void	cBrowserContainer::set_caption(const litehtml::tchar_t* caption){
			printf("\n**Lite_HTML_Func: set_caption");
		}

		void	cBrowserContainer::set_base_url(const litehtml::tchar_t* base_url){
			printf("\n**Lite_HTML_Func: set_base_url");
		}

		void	cBrowserContainer::link(const std::shared_ptr<litehtml::document>& doc, const litehtml::element::ptr& el){
			printf("\n**Lite_HTML_Func: link");
		}

		void	cBrowserContainer::on_anchor_click(const litehtml::tchar_t* url, const litehtml::element::ptr& el){
			printf("\n**Lite_HTML_Func: on_anchor_click");
		}

		void	cBrowserContainer::set_cursor(const litehtml::tchar_t* cursor){
			printf("\n**Lite_HTML_Func: set_cursor");
		}

		void	cBrowserContainer::transform_text(litehtml::tstring& text, litehtml::text_transform tt){
			printf("\n**Lite_HTML_Func: transform_text");
		}

		void	cBrowserContainer::import_css(litehtml::tstring& text, const litehtml::tstring& url, litehtml::tstring& baseurl){
			printf("\n**Lite_HTML_Func: import_css: %s : %s : %s",  text.c_str(), url.c_str(), baseurl.c_str());
			
			text =  std::string(reinterpret_cast<const char*>(     oClip->fGetCssFile( gzStrC((char*)url.c_str()) ).fToUTF8().fFinalize().get()    )); //TODO Optimize
			
			
		}

		void	cBrowserContainer::set_clip(const litehtml::position& pos, const litehtml::border_radiuses& bdr_radius, bool valid_x, bool valid_y){
			printf("\n**Lite_HTML_Func: set_clip");
		}

		void	cBrowserContainer::del_clip(){
			printf("\n**Lite_HTML_Func: del_clip");
		}

		void	cBrowserContainer::get_client_rect(litehtml::position& client) const{
		//	printf("\n**Lite_HTML_Func: get_client_rect");
			//get_client_rect
			client = litehtml::position(0, 0, 800, 600);
		}

		std::shared_ptr<litehtml::element>	cBrowserContainer::create_element(const litehtml::tchar_t *tag_name,
																	 const litehtml::string_map &attributes,
																	 const std::shared_ptr<litehtml::document> &doc){
			printf("\n**Lite_HTML_Func: create_element");
			return 0;
		}

																	 
		void	cBrowserContainer::get_media_features(litehtml::media_features& media) const{
			printf("\n**Lite_HTML_Func: get_media_features");
		}

		void	cBrowserContainer::get_language(litehtml::tstring& language, litehtml::tstring & culture) const{
			printf("\n**Lite_HTML_Func: get_language");
		}

		int cBrowserContainer::line_height( litehtml::uint_ptr hdc, litehtml::uint_ptr hFont ){
			printf("\n**Lite_HTML_Func: line_height");
			//HFONT oldFont = (HFONT) SelectObject((HDC) hdc, (HFONT) hFont);
			//TEXTMETRIC tm;
			//GetTextMetrics((HDC) hdc, &tm);
			//SelectObject((HDC) hdc, oldFont);
			//return (int) tm.tmHeight;
			return (int) 15;
		}

	</cpp_class>
		
		
	
	}
}
