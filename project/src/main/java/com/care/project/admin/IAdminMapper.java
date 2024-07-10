package com.care.project.admin;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.care.project.member.MemberDTO;

@Mapper
public interface IAdminMapper {

	int totalCountAd(@Param("select")String select, @Param("search")String search);

	ArrayList<MemberDTO>memberListAd(@Param("begin")int begin, @Param("end")int end, @Param("select")String select, @Param("search")String search);

	MemberDTO userInfo(String userId);

	int deleteMemberAd(String userId);

	int updateMemberAd(MemberDTO member);

	LocationDTO getLocation(String shopId);
}
