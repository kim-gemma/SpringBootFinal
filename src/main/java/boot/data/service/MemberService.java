package boot.data.service;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import boot.data.dto.MemberDto;
import boot.data.mapper.MemberMapperInter;
import jakarta.servlet.http.HttpSession;

@Service
public class MemberService {
	
	@Autowired
	MemberMapperInter inter;
	
	public int getMemberCount() {
		return inter.getMemberCount();
	}
	
	public void insertMemberform(MemberDto dto, ArrayList<MultipartFile> upload, HttpSession session) {
		String path= session.getServletContext().getRealPath("/membersave");
		System.out.println(path);
		
		String uploadName="";
		
		if(upload.get(0).getOriginalFilename().equals("")) {
			uploadName="no";
		}
		else {

            for (MultipartFile f : upload) {

                SimpleDateFormat sdf =
                        new SimpleDateFormat("yyyyMMddHHmmss");

                String fname =
                        sdf.format(new Date()) + "_" +
                        f.getOriginalFilename();

                uploadName += fname + ",";

                try {
                    f.transferTo(new File(path + "\\" + fname));
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }

            uploadName = uploadName.substring(0, uploadName.length() - 1);
        }

        dto.setPhoto(uploadName);
        inter.insertMemberform(dto);
    }
	
	public List<MemberDto> getMemberList(){
		return inter.getMemberList();
	}
	
}
	
