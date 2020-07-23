package uti;

import java.util.List;

//分页的模具
public class PagerModel<T> {

	private int pagestart=0;//limit第一个参数
	private int pagesize=2;//limit第二个参数，每页显示个数
	private int pageNo=1;//默认显示第一页
	private int totalrecode=0;//count(*)记录数
	private int totalpage=0;//总页数	
	//查询结果集
	private List<T> dates;
	
	
	public int getPagestart() {
		return pagestart=(pageNo-1)*pagesize;
	}
	public void setPagestart(int pagestart) {
		this.pagestart = pagestart;
	}
	public int getPagesize() {
		return pagesize;
	}
	public void setPagesize(int pagesize) {
		this.pagesize = pagesize;
	}
	public int getPageNo() {
		return pageNo;
	}
	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}
	public int getTotalrecode() {
		return totalrecode;
	}
	public void setTotalrecode(int totalrecode) {
		this.totalrecode = totalrecode;
	}
	public int getTotalpage() {
		return totalpage=(totalrecode+pagesize-1)/pagesize;
	}
	public void setTotalpage(int totalpage) {
		this.totalpage = totalpage;
	}
	public List<T> getDates() {
		return dates;
	}
	public void setDates(List<T> dates) {
		this.dates = dates;
	}
	
	
	
}
