package boot.data.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import boot.data.dto.MemberDto;

@Mapper
public interface MemberMapperInter {
	public int getMemberCount();
	
	public void insertMemberform(MemberDto dto);

	public List<MemberDto> getMemberList();
}
