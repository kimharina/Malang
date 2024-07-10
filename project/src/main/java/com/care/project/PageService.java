package com.care.project;

	public class PageService {
		public static String printPage(String url, int totalCount, int pageBlock, int currentPage) {
				
				String result="";
			
			// 이전 탭 
				if(currentPage > 1) // 현재 페이지가 시작 값 1보다 클 경우
					// 현재 페이지 -1의 currentPage 값을 가지고 list를 호출
					result += "<a href='" + url + (currentPage-1)+ "'> [이전] </a>";
				else
					// 아니라면 첫 번째 페이지를 보여줌
					result += "<a href='" + url +"1'> [이전] </a>";	
				
			// 데이터의 수량에 맞게 필요한 페이지 수 계산	
				int totalPage = totalCount/pageBlock;
				// 	PageBlock의 배수가 아닐 경우 여분 데이터를 출력할 페이지가 필요
						
					if(totalCount%pageBlock !=0)
						totalPage++; // 배수가 아닐 경우 추가 1페이지	
				
			// 페이지 
				// 번호를 클릭 시 a tag로 list로 이동하는 태그 생성
				// 이 경우 해당 페이지의 값(번호)을 가지고
				// 해당 페이지의 할당된 만큼만 list를 불러오는 용도로 url 작성
					
					for(int i = 1; i <= totalPage; i++ ) {
						if(currentPage == i) // 현재 페이지와 탭의 페이지가 일치하면 (클릭하면) bord 처리
							result += "<a href='" + url + i+ "'> <strong>["+ i +"]</strong></a>";
						else
							result += "<a href='" + url + i+ "'> [" + i +"] </a>";
					}
				
			// 다음 탭
					if(currentPage < totalPage)// 현재 페이지가 총 페이지보다 적을 경우
						// 현재 페이지 +1의 currentPage 값을 가지고 list를 호출	
						result += "<a href='" + url + (currentPage+1)+ "'> [다음] </a>"; 
					else
						// 아니라면 마지막 페이지를 보여줌
						result += "<a href='" + url + totalPage+"'> [다음] </a>";
					
					return result;
			}

}






