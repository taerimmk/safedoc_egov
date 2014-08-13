package egovframework.com.cmm;

import javax.servlet.ServletContext;

import org.springframework.web.context.ServletContextAware;

import egovframework.rte.ptl.mvc.tags.ui.pagination.AbstractPaginationRenderer;
/**
 * ImagePaginationRenderer.java 클래스
 * 
 * @author 서준식
 * @since 2011. 9. 16.
 * @version 1.0
 * @see
 *
 * <pre>
 * << 개정이력(Modification Information) >>
 *   
 *   수정일      수정자           수정내용
 *  -------    -------------    ----------------------
 *   2011. 9. 16.   서준식       이미지 경로에 ContextPath추가
 * </pre>
 */
public class ImagePaginationRenderer extends AbstractPaginationRenderer implements ServletContextAware{

	private ServletContext servletContext;
	
	public ImagePaginationRenderer() {
	
	}
	
	public void initVariables(){
		firstPageLabel    = "<li><a href=\"?pageIndex={1}\" onclick=\"{0}({1});return false; \" style=\"font-size: 24px;\" ><i class=\"fa fa-angle-double-left\"></i></a></li>";
        previousPageLabel = "<li><a href=\"?pageIndex={1}\" onclick=\"{0}({1});return false; \" style=\"font-size: 24px;\" ><i class=\"fa fa-angle-left\"></i></a></li>";
        currentPageLabel  = "<li class=\"active\"><span>{0}</span></li>";
        otherPageLabel    = "<li><a href=\"?pageIndex={1}\" onclick=\"{0}({1});return false; \">{2}</a></li>";
        nextPageLabel     = "<li><a href=\"?pageIndex={1}\" onclick=\"{0}({1});return false; \" style=\"font-size: 24px;\" ><i class=\"fa fa-angle-right\"></i></a></li>";
        lastPageLabel     = "<li><a href=\"?pageIndex={1}\" onclick=\"{0}({1});return false; \" style=\"font-size: 24px;\" ><i class=\"fa fa-angle-double-right\"></i></a></li>";
	}

	

	public void setServletContext(ServletContext servletContext) {
		this.servletContext = servletContext;
		initVariables();
	}

}
