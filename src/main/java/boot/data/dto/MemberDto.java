package boot.data.dto;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("MemberDto")
public class MemberDto {
	private int member;
	private String name;
	private String id;
	private String pass;
	private String photo;
	private String email;
	private Timestamp gaipday;
}
