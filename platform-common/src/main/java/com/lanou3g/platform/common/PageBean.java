package com.lanou3g.platform.common;

import java.util.List;

/**
 * 
 * @Description 封装分页对象
 * @author Denny
 * @date 创建时间：2018年1月30日 上午9:39:52 
 * @version 1.0
 */
public class PageBean {

	/**
	 * 总记录数
	 */
	private long total;

	/**
	 * 当前条目数：开始位置
	 */
	private int startIdx;
	/**
	 * 当前条目数：结束位置
	 */
	private int endIdx;
	
	/**
	 * 总页数
	 */
	private int pageCount;
	
	/**
	 * 记录数据
	 */
	private List<?> rows;

	public long getTotal() {
		return total;
	}

	public void setTotal(long total) {
		this.total = total;
	}

	public List<?> getRows() {
		return rows;
	}

	public void setRows(List<?> rows) {
		this.rows = rows;
	}

	public int getStartIdx() {
		return startIdx;
	}

	public void setStartIdx(int startIdx) {
		this.startIdx = startIdx;
	}

	public int getEndIdx() {
		return endIdx;
	}

	public void setEndIdx(int endIdx) {
		this.endIdx = endIdx;
	}

	public int getPageCount() {
		return pageCount;
	}

	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}
	
}
