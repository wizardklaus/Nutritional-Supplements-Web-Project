package wp.board.dto;


public class BoardDTO {
	private String boardNum; //게시판 숫자
	private String boardTitle; //제목
	private String userId; //작성자 id
	private String boardDate; //게시글 작성 날짜
	private String boardContent; //내용
	private int boardCount; //조회수
	//private String boardComment; //답글
	//private String boardFileName; //파일첨부 
	//private String password; //비밀번호
	
	public BoardDTO(){}


	 //입력할 경우 넘어가는 값
	public BoardDTO(String boardNum, String boardTitle,String userId, String boardDate,
			String boardContent, int boardCount){
		super();
		this.boardNum = boardNum;  
		this.boardTitle = boardTitle;
		this.userId = userId;
		this.boardDate=boardDate;
		this.boardContent = boardContent;
		this.boardCount = boardCount;
		//this.boardComment = boardComment; 
	//	this.password=password;
	}
   //리스트에 담긴 목록을 볼때
	
	public BoardDTO(String userId, String boardTitle,String content) {
		
		this.userId = userId;
		this.boardTitle = boardTitle;
		this.boardContent = content;
		//this.boardComment = comment;
		
		
	//	this.password=password;
	}

	
	public String getBoardNum() {
		return boardNum;
	}

	public void setBoardNum(String boardNum) {
		this.boardNum = boardNum;
	}

	public String getBoardTitle() {
		return boardTitle;
	}

	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getBoardDate() {
		return boardDate;
	}

	public void setBoardDate(String boardDate) {
		this.boardDate = boardDate;
	}

	public String getBoardContent() {
		return boardContent;
	}

	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}

	public int getBoardCount() {
		return boardCount;
	}

	public void setBoardCount(int boardCount) {
		this.boardCount = boardCount;
	}
/*
	public String getBoardComment() {
		return boardComment;
	}

	public void setBoardComment(String boardComment) {
		this.boardComment = boardComment;
	}

*/
}
