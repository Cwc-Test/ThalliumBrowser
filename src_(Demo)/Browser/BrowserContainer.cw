package  {

	<cpp_h>
		#include <iostream>
		#include "litehtml/os_types.h"
		#include "litehtml/types.h"
		#include "litehtml/context.h"
		#include "litehtml/html.h" //document_container
	</cpp_h>
	
	<cpp_class_h>
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
	</cpp_class_h>
			
				
	public struct BrowserContainer extends "public litehtml::document_container" {

		public function BrowserContainer( ):Void {
			
		}	
		
	<cpp_class>
		litehtml::uint_ptr	cBrowserContainer::create_font(const litehtml::tchar_t* faceName, int size, int weight, litehtml::font_style italic, unsigned int decoration, litehtml::font_metrics* fm){
			printf("\n**Lite_HTML_Func: create_font");
			return 0;
		}

		void	cBrowserContainer::delete_font(litehtml::uint_ptr hFont){
			printf("\n**Lite_HTML_Func: delete_font");
		}

		int		cBrowserContainer::text_width(const litehtml::tchar_t* text, litehtml::uint_ptr hFont){
			printf("\n**Lite_HTML_Func: text_width");
			return 0;
		}

		void	cBrowserContainer::draw_text(litehtml::uint_ptr hdc, const litehtml::tchar_t* text, litehtml::uint_ptr hFont, litehtml::web_color color, const litehtml::position& pos){
			printf("\n**Lite_HTML_Func: draw_text");
		}

		int		cBrowserContainer::pt_to_px(int pt){
			printf("\n**Lite_HTML_Func: pt_to_px");
			return 0;
		}

		int		cBrowserContainer::get_default_font_size() const{
			printf("\n**Lite_HTML_Func: get_default_font_size");
			return 0;
		}

		const litehtml::tchar_t*	cBrowserContainer::get_default_font_name() const{
			printf("\n**Lite_HTML_Func: get_default_font_name");
		}

		void	cBrowserContainer::draw_list_marker(litehtml::uint_ptr hdc, const litehtml::list_marker& marker){
			printf("\n**Lite_HTML_Func: draw_list_marker");
		}

		void	cBrowserContainer::load_image(const litehtml::tchar_t* src, const litehtml::tchar_t* baseurl, bool redraw_on_ready){
			printf("\n**Lite_HTML_Func: load_image");
		}

		void	cBrowserContainer::get_image_size(const litehtml::tchar_t* src, const litehtml::tchar_t* baseurl, litehtml::size& sz){
			printf("\n**Lite_HTML_Func: get_image_size");
		}

		void	cBrowserContainer::draw_background(litehtml::uint_ptr hdc, const litehtml::background_paint& bg){
			printf("\n**Lite_HTML_Func: draw_background");
		}

		void	cBrowserContainer::draw_borders(litehtml::uint_ptr hdc, const litehtml::borders& borders, const litehtml::position& draw_pos, bool root){
			printf("\n**Lite_HTML_Func: draw_borders");
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
			printf("\n**Lite_HTML_Func: import_css");
		}

		void	cBrowserContainer::set_clip(const litehtml::position& pos, const litehtml::border_radiuses& bdr_radius, bool valid_x, bool valid_y){
			printf("\n**Lite_HTML_Func: set_clip");
		}

		void	cBrowserContainer::del_clip(){
			printf("\n**Lite_HTML_Func: del_clip");
		}

		void	cBrowserContainer::get_client_rect(litehtml::position& client) const{
			printf("\n**Lite_HTML_Func: get_client_rect");
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

	</cpp_class>
		
		
	
	}
}
