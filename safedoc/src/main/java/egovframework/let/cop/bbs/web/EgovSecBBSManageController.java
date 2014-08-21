package egovframework.let.cop.bbs.web;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springmodules.validation.commons.DefaultBeanValidator;

import egovframework.com.cmm.EgovMessageSource;
import egovframework.com.cmm.LoginVO;
import egovframework.com.cmm.service.EgovFileMngService;
import egovframework.com.cmm.service.EgovFileMngUtil;
import egovframework.com.cmm.service.FileVO;
import egovframework.let.cop.bbs.service.Board;
import egovframework.let.cop.bbs.service.BoardMaster;
import egovframework.let.cop.bbs.service.BoardMasterVO;
import egovframework.let.cop.bbs.service.BoardVO;
import egovframework.let.cop.bbs.service.EgovBBSAttributeManageService;
import egovframework.let.cop.bbs.service.EgovBBSManageService;
import egovframework.let.utl.fcc.service.EgovAuthUtil;
import egovframework.let.utl.sim.service.EgovFileScrty;
import egovframework.rte.fdl.property.EgovPropertyService;
import egovframework.rte.fdl.security.userdetails.util.EgovUserDetailsHelper;
import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;

//import org.apache.log4j.Logger;

/**
 * 게시물 관리를 위한 컨트롤러 클래스
 * 
 * @author 공통 서비스 개발팀 이삼섭
 * @since 2009.03.19
 * @version 1.0
 * @see
 *
 *      <pre>
 * << 개정이력(Modification Information) >>
 * 
 *   수정일      수정자          수정내용
 *  -------    --------    ---------------------------
 *  2009.03.19  이삼섭          최초 생성
 *  2009.06.29  한성곤	       2단계 기능 추가 (댓글관리, 만족도조사)
 *  2011.08.31  JJY            경량환경 템플릿 커스터마이징버전 생성
 *
 * </pre>
 */
@Controller
public class EgovSecBBSManageController {
	private static final Logger logger = LoggerFactory
			.getLogger(EgovSecBBSManageController.class);
	@Resource(name = "EgovBBSManageService")
	private EgovBBSManageService bbsMngService;

	@Resource(name = "EgovBBSAttributeManageService")
	private EgovBBSAttributeManageService bbsAttrbService;

	@Resource(name = "EgovFileMngService")
	private EgovFileMngService fileMngService;

	@Resource(name = "EgovFileMngUtil")
	private EgovFileMngUtil fileUtil;

	@Resource(name = "propertiesService")
	protected EgovPropertyService propertyService;

	@Resource(name = "egovMessageSource")
	EgovMessageSource egovMessageSource;

	// ---------------------------------
	// 2009.06.29 : 2단계 기능 추가
	// ---------------------------------
	// SHT-CUSTOMIZING//@Resource(name = "EgovBBSCommentService")
	// SHT-CUSTOMIZING//private EgovBBSCommentService bbsCommentService;

	// SHT-CUSTOMIZING//@Resource(name = "EgovBBSSatisfactionService")
	// SHT-CUSTOMIZING//private EgovBBSSatisfactionService
	// bbsSatisfactionService;

	// SHT-CUSTOMIZING//@Resource(name = "EgovBBSScrapService")
	// SHT-CUSTOMIZING//private EgovBBSScrapService bbsScrapService;
	// //-------------------------------

	@Autowired
	private DefaultBeanValidator beanValidator;

	// Logger log = Logger.getLogger(this.getClass());

	/**
	 * XSS 방지 처리.
	 *
	 * @param data
	 * @return
	 */
	protected String unscript(String data) {
		if (data == null || data.trim().equals("")) {
			return "";
		}

		String ret = data;

		ret = ret.replaceAll("<(S|s)(C|c)(R|r)(I|i)(P|p)(T|t)", "&lt;script");
		ret = ret.replaceAll("</(S|s)(C|c)(R|r)(I|i)(P|p)(T|t)", "&lt;/script");

		ret = ret.replaceAll("<(O|o)(B|b)(J|j)(E|e)(C|c)(T|t)", "&lt;object");
		ret = ret.replaceAll("</(O|o)(B|b)(J|j)(E|e)(C|c)(T|t)", "&lt;/object");

		ret = ret.replaceAll("<(A|a)(P|p)(P|p)(L|l)(E|e)(T|t)", "&lt;applet");
		ret = ret.replaceAll("</(A|a)(P|p)(P|p)(L|l)(E|e)(T|t)", "&lt;/applet");

		ret = ret.replaceAll("<(E|e)(M|m)(B|b)(E|e)(D|d)", "&lt;embed");
		ret = ret.replaceAll("</(E|e)(M|m)(B|b)(E|e)(D|d)", "&lt;embed");

		ret = ret.replaceAll("<(F|f)(O|o)(R|r)(M|m)", "&lt;form");
		ret = ret.replaceAll("</(F|f)(O|o)(R|r)(M|m)", "&lt;form");

		return ret;
	}

	/**
	 * 익명게시물에 대한 목록을 조회한다.
	 *
	 * @param boardVO
	 * @param sessionVO
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/cop/bbs/sec/selectBoardList.do")
	public String selectAnonymousBoardArticles(
			@RequestParam(value = "passwordConfirmAt", required = false) String passwordConfirmAt,
			@ModelAttribute("searchVO") BoardVO boardVO, ModelMap model)
			throws Exception {
		// LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();

		boardVO.setBbsId(boardVO.getBbsId());
		boardVO.setBbsNm(boardVO.getBbsNm());

		BoardMasterVO vo = new BoardMasterVO();

		vo.setBbsId(boardVO.getBbsId());
		vo.setUniqId("SEC"); // 익명

		BoardMasterVO master = bbsAttrbService.selectBBSMasterInf(vo);

		// -------------------------------
		// 익명게시판이 아니면.. 원래 게시판 URL로 forward
		// -------------------------------
		if (!master.getBbsTyCode().equals("BBST02")) {
			return "forward:/cop/bbs/selectBoardList.do";
		}
		// //-----------------------------

		boardVO.setPageUnit(propertyService.getInt("pageUnit"));
		boardVO.setPageSize(propertyService.getInt("pageSize"));

		PaginationInfo paginationInfo = new PaginationInfo();

		paginationInfo.setCurrentPageNo(boardVO.getPageIndex());
		paginationInfo.setRecordCountPerPage(boardVO.getPageUnit());
		paginationInfo.setPageSize(boardVO.getPageSize());

		boardVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
		boardVO.setLastIndex(paginationInfo.getLastRecordIndex());
		boardVO.setRecordCountPerPage(paginationInfo.getRecordCountPerPage());

		Map<String, Object> map = bbsMngService.selectBoardArticles(boardVO,
				vo.getBbsAttrbCode());
		int totCnt = Integer.parseInt((String) map.get("resultCnt"));

		paginationInfo.setTotalRecordCount(totCnt);

		// -------------------------------
		// 기본 BBS template 지정
		// -------------------------------
		if (master.getTmplatCours() == null
				|| master.getTmplatCours().equals("")) {
			master.setTmplatCours("/css/egovframework/cop/bbs/egovBaseTemplate.css");
		}
		// //-----------------------------
		boardVO.setPasswordConfirmAt(passwordConfirmAt);
		model.addAttribute("resultList", map.get("resultList"));
		model.addAttribute("resultCnt", map.get("resultCnt"));
		model.addAttribute("boardVO", boardVO);
		model.addAttribute("brdMstrVO", master);
		model.addAttribute("paginationInfo", paginationInfo);

		model.addAttribute("sec", "true");

		return "cop/bbs/sec/EgovNoticeList";
	}

	/**
	 * 익명게시물 등록을 위한 등록페이지로 이동한다.
	 *
	 * @param boardVO
	 * @param sessionVO
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/cop/bbs/sec/addBoardArticle.do")
	public String addAnonymousBoardArticle(
			@ModelAttribute("searchVO") BoardVO boardVO, ModelMap model)
			throws Exception {
		// LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
		// Boolean isAuthenticated = EgovUserDetailsHelper.isAuthenticated();
		Boolean isAuthenticated = true;

		BoardMasterVO bdMstr = new BoardMasterVO();

		if (isAuthenticated) {
			BoardMasterVO vo = new BoardMasterVO();
			vo.setBbsId(boardVO.getBbsId());
			vo.setUniqId("SEC");

			bdMstr = bbsAttrbService.selectBBSMasterInf(vo);
			model.addAttribute("bdMstr", bdMstr);
		}

		// -------------------------------
		// 익명게시판이 아니면.. 원래 게시판 URL로 forward
		// -------------------------------
		if (!bdMstr.getBbsTyCode().equals("BBST02")) {
			return "forward:/cop/bbs/addBoardArticle.do";
		}
		// //-----------------------------

		// ----------------------------
		// 기본 BBS template 지정
		// ----------------------------
		if (bdMstr.getTmplatCours() == null
				|| bdMstr.getTmplatCours().equals("")) {
			bdMstr.setTmplatCours("/css/egovframework/cop/bbs/egovBaseTemplate.css");
		}

		model.addAttribute("brdMstrVO", bdMstr);
		// //-----------------------------

		model.addAttribute("sec", "true");

		return "cop/bbs/sec/EgovNoticeRegist";
	}

	/**
	 * 익명게시물을 등록한다.
	 *
	 * @param boardVO
	 * @param board
	 * @param sessionVO
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/cop/bbs/sec/insertBoardArticle.do")
	public String insertAnonymousBoardArticle(
			final MultipartHttpServletRequest multiRequest,
			@ModelAttribute("searchVO") BoardVO boardVO,
			@ModelAttribute("bdMstr") BoardMaster bdMstr,
			@ModelAttribute("board") Board board, BindingResult bindingResult,
			SessionStatus status, ModelMap model) throws Exception {

		// LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
		// Boolean isAuthenticated = EgovUserDetailsHelper.isAuthenticated();
		Boolean isAuthenticated = true;

		beanValidator.validate(board, bindingResult);

		if (bindingResult.hasErrors()) {

			BoardMasterVO master = new BoardMasterVO();
			BoardMasterVO vo = new BoardMasterVO();

			vo.setBbsId(boardVO.getBbsId());
			vo.setUniqId("SEC");

			master = bbsAttrbService.selectBBSMasterInf(vo);

			model.addAttribute("bdMstr", master);

			// -------------------------------
			// 익명게시판이 아니면.. 원래 게시판 URL로 forward
			// -------------------------------
			if (!bdMstr.getBbsTyCode().equals("BBST02")) {
				return "forward:/cop/bbs/insertBoardArticle.do";
			}
			// //-----------------------------

			// ----------------------------
			// 기본 BBS template 지정
			// ----------------------------
			if (master.getTmplatCours() == null
					|| master.getTmplatCours().equals("")) {
				master.setTmplatCours("/css/egovframework/cop/bbs/egovBaseTemplate.css");
			}

			model.addAttribute("brdMstrVO", master);
			// //-----------------------------

			model.addAttribute("sec", "true");

			return "cop/bbs/sec/EgovNoticeRegist";
		}

		if (isAuthenticated) {
			List<FileVO> result = null;
			String atchFileId = "";

			final Map<String, MultipartFile> files = multiRequest.getFileMap();
			if (!files.isEmpty()) {
				result = fileUtil.parseFileInf(files, "BBS_", 0, "", "");
				atchFileId = fileMngService.insertFileInfs(result);
			}
			board.setAtchFileId(atchFileId);
			board.setFrstRegisterId("SEC");
			board.setBbsId(board.getBbsId());

			// 익명게시판 관련
			board.setNtcrNm(board.getNtcrNm());
			board.setPassword(EgovFileScrty.encryptPassword(board.getPassword()));

			board.setNttCn(unscript(board.getNttCn())); // XSS 방지

			bbsMngService.insertBoardArticle(board);
		}

		// status.setComplete();
		return "forward:/cop/bbs/sec/selectBoardList.do";
	}

	/**
	 * 익명게시물에 대한 상세 정보를 조회한다.
	 *
	 * @param boardVO
	 * @param sessionVO
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/cop/bbs/sec/selectBoardArticle.do")
	public String selectAnonymousBoardArticle(
			@ModelAttribute("searchVO") BoardVO boardVO, ModelMap model)
			throws Exception {
		// LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
		String[] setRole = { "ROLE_ADMIN" };
		boolean hasRole = EgovAuthUtil.hasRole(setRole);

		if (!hasRole) {
			String dbpassword = bbsMngService.getPasswordInf(boardVO);
			String enpassword = EgovFileScrty.encryptPassword(boardVO
					.getPassword());

			if (!dbpassword.equals(enpassword)) {

				model.addAttribute("msg", egovMessageSource
						.getMessage("cop.password.not.same.msg"));
				String passwordConfirmAt = "N";
				return "forward:/cop/bbs/sec/selectBoardList.do?passwordConfirmAt="
						+ passwordConfirmAt;
			}
		}
		// 조회수 증가 여부 지정
		boardVO.setPlusCount(true);

		// ---------------------------------
		// 2009.06.29 : 2단계 기능 추가
		// ---------------------------------
		if (!boardVO.getSubPageIndex().equals("")) {
			boardVO.setPlusCount(false);
		}
		// //-------------------------------

		boardVO.setLastUpdusrId("SEC");
		BoardVO vo = bbsMngService.selectBoardArticle(boardVO);

		model.addAttribute("result", vo);
		model.addAttribute("sessionUniqId", "SEC");

		// ----------------------------
		// template 처리 (기본 BBS template 지정 포함)
		// ----------------------------
		BoardMasterVO master = new BoardMasterVO();

		master.setBbsId(boardVO.getBbsId());
		master.setUniqId("SEC");

		BoardMasterVO masterVo = bbsAttrbService.selectBBSMasterInf(master);

		// -------------------------------
		// 익명게시판이 아니면.. 원래 게시판 URL로 forward
		// -------------------------------
		if (!masterVo.getBbsTyCode().equals("BBST02")) {
			return "forward:/cop/bbs/selectBoardArticle.do";
		}
		// //-----------------------------

		if (masterVo.getTmplatCours() == null
				|| masterVo.getTmplatCours().equals("")) {
			masterVo.setTmplatCours("/css/egovframework/cop/bbs/egovBaseTemplate.css");
		}

		model.addAttribute("brdMstrVO", masterVo);
		// //-----------------------------

		model.addAttribute("sec", "true");

		// ----------------------------
		// 2009.06.29 : 2단계 기능 추가
		// ----------------------------
		// SHT-CUSTOMIZING//if
		// (bbsCommentService.canUseComment(boardVO.getBbsId())) {
		// SHT-CUSTOMIZING// model.addAttribute("useComment", "true");
		// SHT-CUSTOMIZING//}

		// SHT-CUSTOMIZING//if
		// (bbsSatisfactionService.canUseSatisfaction(boardVO.getBbsId())) {
		// SHT-CUSTOMIZING// model.addAttribute("useSatisfaction", "true");
		// SHT-CUSTOMIZING//}

		// SHT-CUSTOMIZING//if (bbsScrapService.canUseScrap()) {
		// SHT-CUSTOMIZING// model.addAttribute("useScrap", "true");
		// SHT-CUSTOMIZING//}
		// //--------------------------

		return "cop/bbs/sec/EgovNoticeInqire";
	}

	/**
	 * 익명게시물에 대한 내용을 삭제한다.
	 *
	 * @param boardVO
	 * @param board
	 * @param sessionVO
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/cop/bbs/sec/deleteBoardArticle.do")
	public String deleteAnonymousBoardArticle(
			@ModelAttribute("searchVO") BoardVO boardVO,
			@ModelAttribute("board") Board board,
			@ModelAttribute("bdMstr") BoardMaster bdMstr, ModelMap model)
			throws Exception {

		// LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
		// Boolean isAuthenticated = EgovUserDetailsHelper.isAuthenticated();
		Boolean isAuthenticated = true;

		// --------------------------------------------------
		// 마스터 정보 얻기
		// --------------------------------------------------
		BoardMasterVO master = new BoardMasterVO();

		master.setBbsId(boardVO.getBbsId());
		master.setUniqId("SEC");

		BoardMasterVO masterVo = bbsAttrbService.selectBBSMasterInf(master);

		// -------------------------------
		// 익명게시판이 아니면.. 원래 게시판 URL로 forward
		// -------------------------------
		if (!masterVo.getBbsTyCode().equals("BBST02")) {
			return "forward:/cop/bbs/deleteBoardArticle.do";
		}
		// //-----------------------------

		// -------------------------------
		// 패스워드 비교
		// -------------------------------
		String[] setRole = { "ROLE_ADMIN" };
		boolean hasRole = EgovAuthUtil.hasRole(setRole);

		if (!hasRole) {
			String dbpassword = bbsMngService.getPasswordInf(board);
			String enpassword = EgovFileScrty.encryptPassword(board
					.getPassword());

			if (!dbpassword.equals(enpassword)) {

				model.addAttribute("msg", egovMessageSource
						.getMessage("cop.password.not.same.msg"));

				return "forward:/cop/bbs/sec/selectBoardArticle.do";
			}
		}
		// //-----------------------------

		if (isAuthenticated) {
			board.setLastUpdusrId("SEC");

			bbsMngService.deleteBoardArticle(board);
		}

		return "forward:/cop/bbs/sec/selectBoardList.do";
	}

	/**
	 * 익명게시물 수정을 위한 수정페이지로 이동한다.
	 *
	 * @param boardVO
	 * @param vo
	 * @param sessionVO
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/cop/bbs/sec/forUpdateBoardArticle.do")
	public String selectAnonymousBoardArticleForUpdt(
			@ModelAttribute("searchVO") BoardVO boardVO,
			@ModelAttribute("board") BoardVO vo, ModelMap model)
			throws Exception {

		// Logger.getLogger(this.getClass()).debug(this.getClass().getName()+"selectBoardArticleForUpdt getNttId "+boardVO.getNttId());
		// Logger.getLogger(this.getClass()).debug(this.getClass().getName()+"selectBoardArticleForUpdt getBbsId "+boardVO.getBbsId());

		// LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
		// Boolean isAuthenticated = EgovUserDetailsHelper.isAuthenticated();
		Boolean isAuthenticated = true;

		boardVO.setFrstRegisterId("SEC");

		BoardMaster master = new BoardMaster();
		BoardMasterVO bmvo = new BoardMasterVO();
		BoardVO bdvo = new BoardVO();

		vo.setBbsId(boardVO.getBbsId());

		master.setBbsId(boardVO.getBbsId());
		master.setUniqId("SEC");

		if (isAuthenticated) {
			bmvo = bbsAttrbService.selectBBSMasterInf(master);

			// -------------------------------
			// 익명게시판이 아니면.. 원래 게시판 URL로 forward
			// -------------------------------
			if (!bmvo.getBbsTyCode().equals("BBST02")) {
				return "forward:/cop/bbs/forUpdateBoardArticle.do";
			}
			// //-----------------------------

			// -------------------------------
			// 패스워드 비교
			// -------------------------------
			String[] setRole = { "ROLE_ADMIN" };
			boolean hasRole = EgovAuthUtil.hasRole(setRole);

			if (!hasRole) {
				String dbpassword = bbsMngService.getPasswordInf(boardVO);
				String enpassword = EgovFileScrty.encryptPassword(boardVO
						.getPassword());

				if (!dbpassword.equals(enpassword)) {

					model.addAttribute("msg", egovMessageSource
							.getMessage("cop.password.not.same.msg"));

					return "forward:/cop/bbs/sec/selectBoardArticle.do";
				}
			}
			// //-----------------------------

			bdvo = bbsMngService.selectBoardArticle(boardVO);
		}

		model.addAttribute("result", bdvo);
		model.addAttribute("bdMstr", bmvo);

		// ----------------------------
		// 기본 BBS template 지정
		// ----------------------------
		if (bmvo.getTmplatCours() == null || bmvo.getTmplatCours().equals("")) {
			bmvo.setTmplatCours("/css/egovframework/cop/bbs/egovBaseTemplate.css");
		}

		model.addAttribute("brdMstrVO", bmvo);
		// //-----------------------------

		model.addAttribute("sec", "true");

		return "cop/bbs/sec/EgovNoticeUpdt";
	}

	/**
	 * 익명게시물에 대한 내용을 수정한다.
	 *
	 * @param boardVO
	 * @param board
	 * @param sessionVO
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/cop/bbs/sec/updateBoardArticle.do")
	public String updateAnonymousBoardArticle(
			final MultipartHttpServletRequest multiRequest,

			@ModelAttribute("searchVO") BoardVO boardVO,
			@ModelAttribute("bdMstr") BoardMaster bdMstr,
			@ModelAttribute("board") Board board, BindingResult bindingResult,
			ModelMap model, SessionStatus status) throws Exception {

		// LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
		// Boolean isAuthenticated = EgovUserDetailsHelper.isAuthenticated();
		Boolean isAuthenticated = true;

		String atchFileId = boardVO.getAtchFileId();

		beanValidator.validate(board, bindingResult);
		if (bindingResult.hasErrors()) {

			boardVO.setFrstRegisterId("SEC");

			BoardMaster master = new BoardMaster();
			BoardMasterVO bmvo = new BoardMasterVO();
			BoardVO bdvo = new BoardVO();

			master.setBbsId(boardVO.getBbsId());
			master.setUniqId("SEC");

			bmvo = bbsAttrbService.selectBBSMasterInf(master);

			// -------------------------------
			// 익명게시판이 아니면.. 원래 게시판 URL로 forward
			// -------------------------------
			if (!bdMstr.getBbsTyCode().equals("BBST02")) {
				return "forward:/cop/bbs/updateBoardArticle.do";
			}
			// //-----------------------------

			bdvo = bbsMngService.selectBoardArticle(boardVO);

			model.addAttribute("result", bdvo);
			model.addAttribute("bdMstr", bmvo);

			model.addAttribute("sec", "true");

			return "cop/bbs/sec/EgovNoticeUpdt";
		}

		if (isAuthenticated) {
			final Map<String, MultipartFile> files = multiRequest.getFileMap();
			if (!files.isEmpty()) {
				if ("".equals(atchFileId)) {
					List<FileVO> result = fileUtil.parseFileInf(files, "BBS_",
							0, atchFileId, "");
					atchFileId = fileMngService.insertFileInfs(result);
					board.setAtchFileId(atchFileId);
				} else {
					FileVO fvo = new FileVO();
					fvo.setAtchFileId(atchFileId);
					int cnt = fileMngService.getMaxFileSN(fvo);
					List<FileVO> _result = fileUtil.parseFileInf(files, "BBS_",
							cnt, atchFileId, "");
					fileMngService.updateFileInfs(_result);
				}
			}

			board.setLastUpdusrId("SEC");

			// 익명게시판 관련
			board.setNtcrNm(board.getNtcrNm());
			// board.setPassword(EgovFileScrty.encryptPassword(board.getPassword()));
			String dbpassword = bbsMngService.getPasswordInf(boardVO);
			board.setPassword(dbpassword);
			board.setNttCn(unscript(board.getNttCn())); // XSS 방지

			bbsMngService.updateBoardArticle(board);
		}

		return "forward:/cop/bbs/sec/selectBoardList.do";
	}

	/**
	 * 익명게시물에 대한 답변 등록을 위한 등록페이지로 이동한다.
	 *
	 * @param boardVO
	 * @param sessionVO
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@Secured({ "ROLE_ADMIN" })
	@RequestMapping("/cop/bbs/sec/addReplyBoardArticle.do")
	public String addAnonymousReplyBoardArticle(
			@ModelAttribute("searchVO") BoardVO boardVO, ModelMap model)
			throws Exception {
		// LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();

		BoardMasterVO master = new BoardMasterVO();
		BoardMasterVO vo = new BoardMasterVO();

		vo.setBbsId(boardVO.getBbsId());
		vo.setUniqId("SEC");

		master = bbsAttrbService.selectBBSMasterInf(vo);

		// -------------------------------
		// 익명게시판이 아니면.. 원래 게시판 URL로 forward
		// -------------------------------
		if (!master.getBbsTyCode().equals("BBST02")) {
			return "forward:/cop/bbs/addReplyBoardArticle.do";
		}
		// //-----------------------------

		model.addAttribute("bdMstr", master);
		model.addAttribute("result", boardVO);

		// ----------------------------
		// 기본 BBS template 지정
		// ----------------------------
		if (master.getTmplatCours() == null
				|| master.getTmplatCours().equals("")) {
			master.setTmplatCours("/css/egovframework/cop/bbs/egovBaseTemplate.css");
		}

		model.addAttribute("brdMstrVO", master);
		// //-----------------------------

		model.addAttribute("sec", "true");

		return "cop/bbs/sec/EgovNoticeReply";
	}

	/**
	 * 익명게시물에 대한 답변을 등록한다.
	 *
	 * @param boardVO
	 * @param board
	 * @param sessionVO
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@Secured({ "ROLE_ADMIN" })
	@RequestMapping("/cop/bbs/sec/replyBoardArticle.do")
	public String replyAnonymousBoardArticle(
			final MultipartHttpServletRequest multiRequest,
			@ModelAttribute("searchVO") BoardVO boardVO,
			@ModelAttribute("bdMstr") BoardMaster bdMstr,
			@ModelAttribute("board") Board board, BindingResult bindingResult,
			ModelMap model, SessionStatus status) throws Exception {

		LoginVO user = (LoginVO) EgovUserDetailsHelper.getAuthenticatedUser();
		Boolean isAuthenticated = EgovUserDetailsHelper.isAuthenticated();
		// Boolean isAuthenticated = true;

		beanValidator.validate(board, bindingResult);
		if (bindingResult.hasErrors()) {
			BoardMasterVO master = new BoardMasterVO();
			BoardMasterVO vo = new BoardMasterVO();

			vo.setBbsId(boardVO.getBbsId());
			vo.setUniqId("SEC");

			master = bbsAttrbService.selectBBSMasterInf(vo);

			// -------------------------------
			// 익명게시판이 아니면.. 원래 게시판 URL로 forward
			// -------------------------------
			if (!master.getBbsTyCode().equals("BBST02")) {
				return "forward:/cop/bbs/replyBoardArticle.do";
			}
			// //-----------------------------

			model.addAttribute("bdMstr", master);
			model.addAttribute("result", boardVO);

			// ----------------------------
			// 기본 BBS template 지정
			// ----------------------------
			if (master.getTmplatCours() == null
					|| master.getTmplatCours().equals("")) {
				master.setTmplatCours("/css/egovframework/cop/bbs/egovBaseTemplate.css");
			}

			model.addAttribute("brdMstrVO", master);
			// //-----------------------------

			model.addAttribute("sec", "true");

			return "cop/bbs/sec/EgovNoticeReply";
		}

		if (isAuthenticated) {
			final Map<String, MultipartFile> files = multiRequest.getFileMap();
			String atchFileId = "";

			if (!files.isEmpty()) {
				List<FileVO> result = fileUtil.parseFileInf(files, "BBS_", 0,
						"", "");
				atchFileId = fileMngService.insertFileInfs(result);
			}

			board.setAtchFileId(atchFileId);
			board.setReplyAt("Y");
			board.setFrstRegisterId("SEC");
			board.setBbsId(board.getBbsId());
			board.setParnts(Long.toString(boardVO.getNttId()));
			board.setSortOrdr(boardVO.getSortOrdr());
			board.setReplyLc(Integer.toString(Integer.parseInt(boardVO
					.getReplyLc()) + 1));

			// 익명게시판 관련
			board.setNtcrNm(user.getName());
			String dbpassword = bbsMngService.getPasswordInf(boardVO);
			board.setPassword(dbpassword);
			// board.setPassword(EgovFileScrty.encryptPassword(board.getPassword()));

			board.setNttCn(unscript(board.getNttCn())); // XSS 방지

			bbsMngService.insertBoardArticle(board);
		}

		return "forward:/cop/bbs/sec/selectBoardList.do";
	}

	/**
	 * 작성 비밀번호를 확인하기 위한 전 처리
	 * 
	 * @param qnaManageVO
	 * @param searchVO
	 * @param model
	 * @return "/uss/olh/qna/EgovQnaPasswordConfirm"
	 * @throws Exception
	 */
	@RequestMapping("/cop/bbs/sec/noticePasswordConfirmView.do")
	public String selectPasswordConfirmView(Board board,
			@ModelAttribute("searchVO") BoardVO searchVO, Model model)
			throws Exception {

		model.addAttribute("Board", new Board());

		return "/cop/bbs/sec/EgovNoticePasswordConfirm";
	}

}