package egovframework.let.career.service;

import java.io.Serializable;

@SuppressWarnings("serial")
public class Career implements Serializable {
    
    private int seq;
    private String cate; 
    private String cate_nm;
    private String careers;
    private String comp;
    private String date;
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getCate() {
		return cate;
	}
	public void setCate(String cate) {
		this.cate = cate;
	}
	public String getCate_nm() {
		return cate_nm;
	}
	public void setCate_nm(String cate_nm) {
		this.cate_nm = cate_nm;
	}
	public String getCareers() {
		return careers;
	}
	public void setCareers(String careers) {
		this.careers = careers;
	}
	public String getComp() {
		return comp;
	}
	public void setComp(String comp) {
		this.comp = comp;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
			  

}