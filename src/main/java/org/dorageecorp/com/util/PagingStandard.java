package org.dorageecorp.com.util;

import lombok.Data;

@Data
public class PagingStandard {
	
	private int page;
	private int perPageNumber;
	private int startRow;
	
	public PagingStandard() {
		this.page = 1;
		this.perPageNumber = 10;			// 데이터는 3개씩 보여주겠다
	}

	public void setPage(int page) {

		if (page <= 0) {
			this.page = 1;
			return;
		}
		
		this.page = page;
	}

	public void setPerPageNumber(int perPageNumber) {

		if (perPageNumber <= 0 || perPageNumber > 100) {
			this.perPageNumber = 10;
			return;
		}

		this.perPageNumber = perPageNumber;
	}

	public int getPage() {
		return page;
	}


	public int getPerPageNumber() {
		return perPageNumber;
	}
	
	public int getPageStart() {
		return (this.page - 1) * perPageNumber;
	}
}