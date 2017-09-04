package wp.board.dto;


public class BoardDTO {
	private String boardNum; //�Խ��� ����
	private String boardTitle; //����
	private String userId; //�ۼ��� id
	private String boardDate; //�Խñ� �ۼ� ��¥
	private String boardContent; //����
	private int boardCount; //��ȸ��
	//private String boardComment; //���
	//private String boardFileName; //����÷�� 
	//private String password; //��й�ȣ
	
	public BoardDTO(){}


	 //�Է��� ��� �Ѿ�� ��
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
   //����Ʈ�� ��� ����� ����
	
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
