package kr.itedu.boardmvc.service;

import java.util.ArrayList;

import kr.itedu.boardmvc.action.BoardVO;
import kr.itedu.boardmvc.common.BoardDAO;

public class BoardWriteService {
	
	public ArrayList<BoardVO> getBoardDetail(int btype, int bid){
		ArrayList<BoardVO> result = null;
		BoardDAO dao = BoardDAO.getInstance();
		result = dao.getBoardDetail(btype,bid);
		
		System.out.println("==========BoardWrite(Modify)=============");
		System.out.printf("btype: %d\n", btype);
		System.out.printf("bid: %d\n", bid);
		for(BoardVO vo : result) {
			System.out.printf("btitle: %s\n", vo.getBtitle());
			System.out.printf("bcontent: %s\n", vo.getBcontent());
			System.out.printf("bregdate: %s\n", vo.getBregdate());
			System.out.println("-------------");
		}
		
		return result;
	}
	
}
