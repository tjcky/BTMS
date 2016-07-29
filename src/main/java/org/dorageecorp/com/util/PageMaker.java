package org.dorageecorp.com.util;

import lombok.Data;

@Data
public class PageMaker {
	private int totalCount;
	private int startPage;
	private int endPage;
	private boolean previous;
	private boolean next;
	private int displayPageNumber = 3;	// 페이지 번호는 3개씩

	private PagingStandard pagingStandard;		// 페이지를 노출하는 기준('현재 페이지'와 한 페이지에 노출할 데이터 '개수'를 가지고 있다)

	public void setPagingStandard(PagingStandard pagingStandard) {
		this.pagingStandard = pagingStandard;
	}
	
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;

		calculateData();
	}

	private void calculateData() {
		endPage = (int)(Math.ceil((pagingStandard.getPage() / (double)displayPageNumber)) * displayPageNumber);
		// IF '2' -> 2 / 3 = 0.xxxx, 올림하면 1 * 3 = 3
		// IF '5' -> 5 / 3 = 1.xxxx, 올림하면 2 * 3 = 6
		// IF '7' -> 7 / 3 = 2.xxxx, 올림하면 3 * 3 = 9
		
		startPage = endPage - displayPageNumber + 1;
		// IF '2' -> (end)3 - 3 + 1 = 1
		// IF '5' -> (end)6 - 3 + 1 = 4
		// IF '7' -> (end)9 - 3 + 1 = 7
		
		int tempEndPage = (int)(Math.ceil(totalCount / (double)pagingStandard.getPerPageNumber()));
		// IF '2' -> 22 / 3 = 7.xxx -> 올림하면 (temp)8, end 는 3
		// IF '5' -> 22 / 3 = 7.xxx -> 올림하면 (temp)8, end 는 6
		// IF '7' -> ....   = 7.xxx -> 올림하면 (temp)8, end 는 9
		
		if (endPage > tempEndPage) {
			endPage = tempEndPage;			// 현재 페이지가 7인 경우 endPage가 8이 되어야 한다.
		}
		
		previous = startPage == 1 ? false : true;
		next = endPage * pagingStandard.getPerPageNumber() >= totalCount ? false : true;
	}
}